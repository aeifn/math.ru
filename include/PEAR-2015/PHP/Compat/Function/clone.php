<?php
// +----------------------------------------------------------------------+
// | PHP Version 4                                                        |
// +----------------------------------------------------------------------+
// | Copyright (c) 1997-2004 The PHP Group                                |
// +----------------------------------------------------------------------+
// | This source file is subject to version 3.0 of the PHP license,       |
// | that is bundled with this package in the file LICENSE, and is        |
// | available at through the world-wide-web at                           |
// | http://www.php.net/license/3_0.txt.                                  |
// | If you did not receive a copy of the PHP license and are unable to   |
// | obtain it through the world-wide-web, please send a note to          |
// | license@php.net so we can mail you a copy immediately.               |
// +----------------------------------------------------------------------+
// | Authors: Aidan Lister <aidan@php.net>                                |
// +----------------------------------------------------------------------+
//
// $Id: clone.php,v 1.1 2004/11/21 13:06:55 aidan Exp $


/**
 * Replace clone()
 *
 * @category    PHP
 * @package     PHP_Compat
 * @link        http://php.net/language.oop5.cloning
 * @author      Aidan Lister <aidan@php.net>
 * @version     $Revision: 1.1 $
 * @since       PHP 5.0.0
 * @require     PHP 4.0.1 (trigger_error)
 */
if (version_compare(phpversion(), '5.0') === -1) {
    eval('
        function clone($object)
        {
            // Sanity check
            if (!is_object($object)) {
                trigger_error(\'clone() __clone method called on non-object\', E_USER_WARNING);
                return;
            }

            // If there is a __clone method call it on the "new" class
            if (method_exists($object, \'__clone\')) {
                $object->__clone();
            }
            
            return $object;
        }
    ');
}

?>