/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minitalk.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rakpinar <rakpinar@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/23 15:07:53 by rakpinar          #+#    #+#             */
/*   Updated: 2023/05/23 15:07:58 by rakpinar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINITALK_H
# define MINITALK_H

# include <signal.h>
# include <unistd.h>
# include "ft_printf/ft_printf.h"

void	ft_shiftoperation(int pid, char c);
void	signal_handler(int signal);
int		ft_atoi(const char *str);

#endif