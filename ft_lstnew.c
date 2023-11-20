/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gmersch <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/19 15:49:51 by gmersch           #+#    #+#             */
/*   Updated: 2023/11/19 15:49:55 by gmersch          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*point;

	point = malloc(sizeof(t_list));
	if (!point)
		return (NULL);
	point->content = content;
	point->next = NULL;
	return (point);
}
