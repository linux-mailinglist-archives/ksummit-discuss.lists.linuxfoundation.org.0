Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id A625473400
	for <lists@lfdr.de>; Wed, 24 Jul 2019 18:36:00 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 582B0EF2;
	Wed, 24 Jul 2019 16:35:27 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E1453CB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 10:51:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f65.google.com (mail-yw1-f65.google.com
	[209.85.161.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C055A893
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 10:51:09 +0000 (UTC)
Received: by mail-yw1-f65.google.com with SMTP id b143so17945240ywb.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 03:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3IQ/0++ddIZYjI/sog9orAhLz4WoB7kRSBfbtT51JZg=;
	b=BAv/OawH5KpYy7rVs0g7HJ38B+if09Hm2DmX9U3NshGkmQ457Ag9o5/ftVmzFpC8XP
	AC7DICQIryvULiuu5xwPlutl6pKzARSWOMVpYcqPIsFqJu0Bhm3hzJlo09PFrl8A2nqN
	Ib9EaofwDbl5C+OWlagzVhCAPbk5D1SqPUGxnDyR+gTbhrOM9aCtnww8jc35jzOuaAFS
	o26W0OqAzdZ2UM7cYW/ag1tmUCZUuK/Og6Kznc4m4eyiqoUdAhZRj4cTxPvoxmxtCreh
	FYrBRy8Ug4qm1RTv+KIVSZFTFMfs//yRRxe9jZKlPpNNG81tuT0YA0NqdLlR0I52betO
	3W+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3IQ/0++ddIZYjI/sog9orAhLz4WoB7kRSBfbtT51JZg=;
	b=jOOn8KmkBU8TsTvvTprx0e1LX5y3DahPbfYTmeSrXrQcrrMIdxnwkG0niF0F7DrymY
	bThRsoFpccnrBJwyryhdLLAjd8vAJhVaMUsCM1lr8BjfDFShiTqCmnMaDtP0N6qz0gxu
	37KiGqeVdewEYtzUwFV3a/fqIoYb2+R8cm1vgxBKpz088YYKEFUlMHIyTssrrSnqdGvL
	/w/3QcFYolB7Ix7K+jWntWkYA6ASjdPFuubgi7YYOR60hN3bfUDy4R8iGbb5KXhfnkUq
	XDsrO5jRjWnUiJAPIFOdALMReW6q8GdhP4HS2gIw5zY3AnXhuxHW95qxgore26fJHE90
	Ug9g==
X-Gm-Message-State: APjAAAXgWDpfkVj62rj3OnHXplM7HIFtbgLdelIiYNv3MyChq15C4aPL
	miNXcK3Amwwfmg6tngzSAKM4tGSpdrohxglLOuM=
X-Google-Smtp-Source: APXvYqxj5RZmJamUKZrov1aXqfxZXyc1E88jItW3agTo3WGdXOwFGGasFzg2QqzN5SYbaBeEUKlu3dwcn5iFmXRvW2s=
X-Received: by 2002:a81:13d4:: with SMTP id 203mr49543894ywt.181.1563965468892;
	Wed, 24 Jul 2019 03:51:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190530055947.GA29812@mit.edu>
	<20190724055226.GA15444@jagdpanzerIV>
	<20190724080347.GA12744@jagdpanzerIV>
In-Reply-To: <20190724080347.GA12744@jagdpanzerIV>
From: Amir Goldstein <amir73il@gmail.com>
Date: Wed, 24 Jul 2019 13:50:57 +0300
Message-ID: <CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Wed, 24 Jul 2019 16:35:23 +0000
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

On Wed, Jul 24, 2019 at 11:03 AM Sergey Senozhatsky
<sergey.senozhatsky.work@gmail.com> wrote:
>
> On (07/24/19 14:52), Sergey Senozhatsky wrote:
> > On (05/30/19 01:59), Theodore Ts'o wrote:
> > > From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
> [..]
> > To extend the topic with some discussion points:
> >
> > - We are facing a rather familiar problem. Basically, SMB2 CHANGE_NOTIFY
> >   [1] is something what fsnotify normally does, except that we can't use
> >   it in cifsd kernel module. I see that NFS guys had [2] same issues some
> >   time ago.
> >
> >   So the question is - how to do fs notify style monitoring in a kernel
> >   module (nfsd, cifsd)? Any chance the kernel can start exporting fsnotify
> >   symbols?

I don't see a problem with exporting those symbols.
As a matter of fact, I have a plan to use them also from overlayfs.
At the time that Jeff posted his patches, there was no active fsnotify
maintainer.
Jeff, did you abandon this effort for nfsd?

>
> I even looked at LSM hooks, because they do what we need - invoke
> creat, open, truncate, chmod, chown, unlink, callbacks. But, first,
> I do realize that LSM was not meant to be used as some sort of fsnotify
> replacement, and, second, LSM symbols are not exported anyway :)
>

fsnotify could actually be called from LSM hooks, see:
https://github.com/amir73il/linux/commits/fsnotify_dirent_perm

It may or may not be clear to you, but what you get extra from fsnotify
compared to using bare LSM hooks is:
- Minimal performance overhead for a non-marked object
- Ability to subscribe/unsubscribe to certain events dynamically
- Manage multiple subscriber instances (groups), like one per SMB session
- Queuing infrastructure for async events if you need it

Thanks,
Amir.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
