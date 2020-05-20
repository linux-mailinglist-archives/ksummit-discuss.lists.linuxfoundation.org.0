Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7DB1DBC73
	for <lists@lfdr.de>; Wed, 20 May 2020 20:16:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C4E2E8701E;
	Wed, 20 May 2020 18:16:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mhtx3It9Fent; Wed, 20 May 2020 18:16:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 33D6087008;
	Wed, 20 May 2020 18:16:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 10008C088A;
	Wed, 20 May 2020 18:16:15 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5C1E5C0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4AD9888172
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4IqaFUQSw2el
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:16:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2B3248815D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:16:10 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.93 #3 (Red Hat
 Linux)) id 1jbTG9-00CXSU-I2; Wed, 20 May 2020 18:16:05 +0000
Date: Wed, 20 May 2020 19:16:05 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20200520181605.GA23230@ZenIV.linux.org.uk>
References: <202005200917.71E6A5B20@keescook>
 <20200520163102.GZ23230@ZenIV.linux.org.uk>
 <202005201104.72FED15776@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202005201104.72FED15776@keescook>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] seccomp feature development
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
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
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Wed, May 20, 2020 at 11:05:58AM -0700, Kees Cook wrote:
> On Wed, May 20, 2020 at 05:31:02PM +0100, Al Viro wrote:
> > On Wed, May 20, 2020 at 09:17:41AM -0700, Kees Cook wrote:
> > > As recently outlined[1], there are are a number of seccomp topics that
> > > need discussion:
> > > 
> > >  - fd passing
> > >  - deep argument inspection
> > >  - changing structure sizes
> > >  - syscall bitmasks
> > > 
> > > Specifically, seccomp needs to grow the ability to inspect Extensible
> > > Argument syscalls, which requires that it inspect userspace memory
> > > without Time-of-Check/Time-of-Use races and without double-copying.
> > > Additionally, since the structures can grow and be nested, there needs
> > > to be a way to
> > 
> > ... catch and kill the bullshit ABI "enhancements" that would attempt that
> > kind of garbage.  I'm not sure why that is seccomp-related, though...
> 
> We already have structs passed to syscalls that contain pointers to yet
> more structs. Do you mean those should be disallowed? (Personally, I
> would love that, but this doesn't seem to match the reality of the
> design considerations of those syscalls.)

We have no chance to kill the existing ones off, but we certainly can stop
accepting new ones.  I would make an exception for struct iovec arrays
passed as an argument, provided that the data they refer to is opaque,
and while pselect6() kind of kludges are bloody revolting, they might
be inevitable in some cases - not without a very good explanation from
their authors, though, and "I wanna have 18 arguments; whaddya mean, don't?!"
is not one.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
