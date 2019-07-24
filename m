Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1AF73401
	for <lists@lfdr.de>; Wed, 24 Jul 2019 18:36:18 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8E1D7EF9;
	Wed, 24 Jul 2019 16:35:28 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 367CB9EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 10:55:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CF86F893
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 10:55:55 +0000 (UTC)
Received: from tleilax.poochiereds.net (cpe-71-70-156-158.nc.res.rr.com
	[71.70.156.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D7BE722387;
	Wed, 24 Jul 2019 10:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1563965755;
	bh=ls5Ya2ruMPTTiJ73v7rSye4YPw/4PClpaYRIyaBQHcY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=ERFsnUjARfgRf+b1eMCcrlMNpLT9odZ+JK3rERrB/RlAtbGhGeuX/8jlHS9IMdikw
	v/kp0+plI5Q7DLBy+Ax6Kt+OQ0x5f5I/uPMoH0+a3n+B5mjar5siV77PRbS5aaSGBn
	JOW7H+ReCbggG7d5nMluCB/OMCDh3/zO3UkSJ+LA=
Message-ID: <094f7a8233152e80f34b45982058b599d605864f.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>, Sergey Senozhatsky
	<sergey.senozhatsky.work@gmail.com>
Date: Wed, 24 Jul 2019 06:55:53 -0400
In-Reply-To: <CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
References: <20190530055947.GA29812@mit.edu>
	<20190724055226.GA15444@jagdpanzerIV>
	<20190724080347.GA12744@jagdpanzerIV>
	<CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Wed, 24 Jul 2019 16:35:23 +0000
Cc: Trond Myklebust <trondmy@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Wed, 2019-07-24 at 13:50 +0300, Amir Goldstein wrote:
> On Wed, Jul 24, 2019 at 11:03 AM Sergey Senozhatsky
> <sergey.senozhatsky.work@gmail.com> wrote:
> > On (07/24/19 14:52), Sergey Senozhatsky wrote:
> > > On (05/30/19 01:59), Theodore Ts'o wrote:
> > > > From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
> > [..]
> > > To extend the topic with some discussion points:
> > > 
> > > - We are facing a rather familiar problem. Basically, SMB2 CHANGE_NOTIFY
> > >   [1] is something what fsnotify normally does, except that we can't use
> > >   it in cifsd kernel module. I see that NFS guys had [2] same issues some
> > >   time ago.
> > > 
> > >   So the question is - how to do fs notify style monitoring in a kernel
> > >   module (nfsd, cifsd)? Any chance the kernel can start exporting fsnotify
> > >   symbols?
> 
> I don't see a problem with exporting those symbols.
> As a matter of fact, I have a plan to use them also from overlayfs.
> At the time that Jeff posted his patches, there was no active fsnotify
> maintainer.
> Jeff, did you abandon this effort for nfsd?
> 

(cc'ing Trond)

Trond has been driving those patches more recently. He posted a revised
set of them recently, and they still use fsnotify to detect unlink
activity:

https://www.spinics.net/lists/linux-nfs/msg73692.html

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
> - Minimal performance overhead for a non-marked object
> - Ability to subscribe/unsubscribe to certain events dynamically
> - Manage multiple subscriber instances (groups), like one per SMB session
> - Queuing infrastructure for async events if you need it
-- 
Jeff Layton <jlayton@kernel.org>

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
