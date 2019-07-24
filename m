Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF3872D8E
	for <lists@lfdr.de>; Wed, 24 Jul 2019 13:28:32 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A58B7D56;
	Wed, 24 Jul 2019 11:28:19 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3A92CF6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 11:28:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
	[209.85.210.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5F3CC7F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 11:28:17 +0000 (UTC)
Received: by mail-pf1-f172.google.com with SMTP id q10so20799905pff.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 04:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=YppZ/ZoQObzSyfx/8wM6ZnZ73/ZzFrT9AA+/qIYy8UE=;
	b=PargPgxsjuzfBcSGVB4TGRYFQLUX5+GN6CRWMQNTaY16fg0T+LVL9Y23Gx5ptb6ozg
	o+SKoJR2AxS3fq9Lxhvw0BRRR/eg73LbmX3vW1r+9fLjctgx3TAyXLcrbVmdwEnswXu5
	46Jc4xM6t7ysxkmPayFZe+fTnVYTdbwthHCtaiKSRSvh+Hrah8CdutfboYHQKQL0DLmY
	4iXLuqa5aQdbmHgbQUq02EiSDVpgtsxglPbGEVl2wODpHZ5+J0HwRWj9d1Z3MgrHXpgy
	en90kPD51gf6+mZ3TjmGT5IphcpLid080M9YH6a0eCwDsUeoqh5zz1zRNbrn3wBQBbPZ
	05og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=YppZ/ZoQObzSyfx/8wM6ZnZ73/ZzFrT9AA+/qIYy8UE=;
	b=HpeBcld92QMYTio7Ri3S2szSwWOd6xojLaGjVwb2knBAKVT13BXa0en1mO+eljuaCa
	Zwf1pzRRD1DATsQy9PWICQ2qaIw8xX/g6d4RBlyvgcAMYlTUulT+C7n0oxLCmFszAXxz
	8kVBa7R9o6gs0pyO3LPP5EjcfTX3+3PPy4pGsYAp0yt9sgb3WGV2oYDaAJk+OLC3Eqs1
	fgzTclymbQNi9H3jdJBlDt/Oil9/xBOratb+ZzHVO1g9+e1GuNPsW6F2i+GUgv/oCsD3
	vbapTaLzynXeS0foMsHxDoxGTcJ7GLFsjrNwn6v+06iir0y5uaPAIgWYojhspxvG8B0R
	qLjg==
X-Gm-Message-State: APjAAAUjKyZVNvioI3Grsx/kx5Z74lPKCKm2EM751sq6gKCa4GHjkQyB
	O9l6O4TaiBNW2vDL4BAuApQ=
X-Google-Smtp-Source: APXvYqy5XJhEwcrWqFmiFI4nLGH6ABYoVUsXNPLQNoew/35xdoRsjJzDVb/D0eKl+AyKFW5MQnz9oA==
X-Received: by 2002:a62:8643:: with SMTP id x64mr11170544pfd.7.1563967696868; 
	Wed, 24 Jul 2019 04:28:16 -0700 (PDT)
Received: from localhost ([121.137.63.184]) by smtp.gmail.com with ESMTPSA id
	i6sm49136612pgi.40.2019.07.24.04.28.15
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 04:28:15 -0700 (PDT)
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
X-Google-Original-From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Date: Wed, 24 Jul 2019 20:28:12 +0900
To: Amir Goldstein <amir73il@gmail.com>
Message-ID: <20190724112812.GB496@tigerII.localdomain>
References: <20190530055947.GA29812@mit.edu>
	<20190724055226.GA15444@jagdpanzerIV>
	<20190724080347.GA12744@jagdpanzerIV>
	<CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Linux kernel SMB server (CIFSD)
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On (07/24/19 13:50), Amir Goldstein wrote:
[..]
> I don't see a problem with exporting those symbols.
> As a matter of fact, I have a plan to use them also from overlayfs.
> At the time that Jeff posted his patches, there was no active fsnotify
> maintainer.

Cool.

> Jeff, did you abandon this effort for nfsd?
> 
> >
> > I even looked at LSM hooks, because they do what we need - invoke
> > creat, open, truncate, chmod, chown, unlink, callbacks. But, first,
> > I do realize that LSM was not meant to be used as some sort of fsnotify
> > replacement, and, second, LSM symbols are not exported anyway :)
> >
> 
> fsnotify could actually be called from LSM hooks, see:
> https://github.com/amir73il/linux/commits/fsnotify_dirent_perm
>
> It may or may not be clear to you, but what you get extra from fsnotify
> compared to using bare LSM hooks is:

Oh yeah, LSM does not really fit. I looked at it just out of curiosity.

> - Minimal performance overhead for a non-marked object
> - Ability to subscribe/unsubscribe to certain events dynamically

Absolutely, we need to "subscribe/unsubscribe dynamically".

> - Manage multiple subscriber instances (groups), like one per SMB session

We need this as well, you're right.

> - Queuing infrastructure for async events if you need it

	-ss
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
