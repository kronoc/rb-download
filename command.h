/*
 * command.h
 */

#ifndef __COMMAND_H__
#define __COMMAND_H__

#include "listen.h"

bool process_command(struct listen_data *, FILE *, char *);
char * external_filename(struct listen_data *listen_data, char *cref);

#endif
