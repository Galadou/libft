/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gmersch <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/01 15:19:14 by gmersch           #+#    #+#             */
/*   Updated: 2023/11/01 16:34:39 by gmersch          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	const char	*test;
	int			i;
	void		*pt;

	test = s;
	i = 0;
	while ((size_t)i != n)
	{
		if ((char)c == test[i])
		{
			pt = (void *) &test[i];
			return (pt);
		}
		i++;
	}
	pt = NULL;
	return (pt);
}
