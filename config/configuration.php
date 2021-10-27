<?php

// Démarrage la session
session_start();

// Ajoute le fichier defines.php
require_once 'defines.php';

/*
 * Met a jour l'horloge avec le timezone par default
 * avec la constante TIMEZONE_DEFAULT défini dans le fichier defines.php
 */
date_default_timezone_set(TIMEZONE_DEFAULT);

/**
 * Redirige sur une autre page.
 *
 * @return void
 */
function redirectToRoute(string $target)
{
    header('Location: ' . $target);
    exit();
}

/**
 * Function var_dump().
 *
 * Affiche les var_dump seulement si l'application
 * est en environnement développement.
 *
 * APP_ENV est definie dans le fichier defines.php
 * APP_ENV = true (environnement développement)
 * APP_ENV = false (environnement production)
 *
 * @param void $variable (varibale a tester, peu être de type bool,array,string,int,float...)
 * @param bool $type     (false pour le print_r, true pour le var_dump)
 *
 * @return string|null
 */
function dump($variable, bool $type = false): ?string
{
    if (APP_ENV === true && $type === false) {
        return '<pre class="my-4">' . print_r($variable, true) . '</pre>';
    } elseif (APP_ENV === true && $type === true) {
        return var_dump($variable);
    } else {
        return null;
    }
}
