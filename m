Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 990821DBA41
	for <lists@lfdr.de>; Wed, 20 May 2020 18:53:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A9CC323A53;
	Wed, 20 May 2020 16:53:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U9i8kXnd0cay; Wed, 20 May 2020 16:53:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 9A18124BFC;
	Wed, 20 May 2020 16:53:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7184FC0893;
	Wed, 20 May 2020 16:53:07 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 417E0C0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 16:53:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3DCA586E23
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 16:53:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BLKITKWYZaOZ
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 16:53:03 +0000 (UTC)
X-Greylist: delayed 00:21:56 by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E1A9A85E13
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 16:53:02 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.93 #3 (Red Hat
 Linux)) id 1jbRcV-00CUxh-0b; Wed, 20 May 2020 16:31:03 +0000
Date: Wed, 20 May 2020 17:31:02 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20200520163102.GZ23230@ZenIV.linux.org.uk>
References: <202005200917.71E6A5B20@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202005200917.71E6A5B20@keescook>
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

On Wed, May 20, 2020 at 09:17:41AM -0700, Kees Cook wrote:
> As recently outlined[1], there are are a number of seccomp topics that
> need discussion:
> 
>  - fd passing
>  - deep argument inspection
>  - changing structure sizes
>  - syscall bitmasks
> 
> Specifically, seccomp needs to grow the ability to inspect Extensible
> Argument syscalls, which requires that it inspect userspace memory
> without Time-of-Check/Time-of-Use races and without double-copying.
> Additionally, since the structures can grow and be nested, there needs
> to be a way to

... catch and kill the bullshit ABI "enhancements" that would attempt that
kind of garbage.  I'm not sure why that is seccomp-related, though...
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
