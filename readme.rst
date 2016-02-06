#######################
Personal Configuration
#######################

:Authors: Panos Georgiadis
:Version: 1.0 of 2016-02-07


vim configuration
=================

:Note: Note that this will replace your `.vimrc` file
       so in case you need your old configuration
       please make sure you have a backup.


**Installation**

   Just copy and paste the following command in your terminal
   and it will do all the work for you.

.. code-block:: bash

  curl bit.ly/1UU8PGD -L -o - | sh

Configuration
-------------
You can do all your configuration in `~/.vimrc` file

Themes
~~~~~~
By default `wombat256mod` is enabled, which is a *dark* theme.
If you prefer white background, go to ``~/.vimrc`` and change
the from ``color wombat256mod`` to ``color proton``.

More themes can be found at
https://github.com/flazz/vim-colorschemes/tree/master/colors
while you can put them into ``~/.vim/colors/`` folder and later
enable them via your ``~/.vimrc`` file.
