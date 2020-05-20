Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 405FB1DC00A
	for <lists@lfdr.de>; Wed, 20 May 2020 22:24:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3AEAE88326;
	Wed, 20 May 2020 20:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id We1Ui00ZCOAb; Wed, 20 May 2020 20:24:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B1D086D6F;
	Wed, 20 May 2020 20:24:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F2336C0893;
	Wed, 20 May 2020 20:24:07 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 141EDC0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 20:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 02C7287ECD
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 20:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M2lt3DGRVne3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 20:24:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E560187EC4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 20:24:04 +0000 (UTC)
Received: from ip5f5af183.dynamic.kabel-deutschland.de ([95.90.241.131]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1jbVFy-0004Za-Ns; Wed, 20 May 2020 20:24:02 +0000
Date: Wed, 20 May 2020 22:24:01 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Kees Cook <keescook@chromium.org>
Message-ID: <20200520202401.s22hstao4kzr5uma@wittgenstein>
References: <202005200917.71E6A5B20@keescook>
 <20200520163102.GZ23230@ZenIV.linux.org.uk>
 <202005201104.72FED15776@keescook>
 <CAHk-=wierGOJZhzrj1+R18id-WdfmK=eWT9YfWdCfMvEO+jLLg@mail.gmail.com>
 <202005201151.AFA3C9E@keescook>
 <CAHk-=wgwS8RJNuaLT1zV_bWGiEb3DndfQ3N85WK9aKP5Kurk_A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wgwS8RJNuaLT1zV_bWGiEb3DndfQ3N85WK9aKP5Kurk_A@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Wed, May 20, 2020 at 12:08:52PM -0700, Linus Torvalds wrote:
> On Wed, May 20, 2020 at 12:04 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > Things seccomp is NOT expected to introspect due to complexity would be
> > stuff like the bpf() syscall.
> 
> Right.
> 
> I don't dispute at all that those kinds of pointer-to-pointer things
> exist all over.
> 
> But:
> 
> > Perhaps the question is "how deeply does seccomp need to inspect?"
> > and maybe it does not get to see anything beyond just the "top level"
> > struct (i.e. struct clone_args) and all pointers within THAT become
> > opaque? That certainly simplifies the design.
> 
> Exactly. I think that's the most common situation by far. Does anybody
> really really need to care at a deep level, and why?


We mostly don't and making all second-level pointers opaque is ok imho.
First, I don't think we need to really nest structs. (We have netlink
for that.)
Second, features for such syscall that require other pointers can and
usually will be placed under a flag in the first-level struct. If that's
filterable you have the option to turn that of based on the flag. As
long as the flag identifies one feature and not one feature that can
have other features it's no different from filtering a simple flag
anyway. Even for clone3() it only has one feature that has a pointer in
the struct and that's for checkpoint/restore and lets them select a
specific pid and it comes with a size argument that is capped by the
maximum nesting depth of pid namespaces in the kernel. So if you see
that the size argument is not 0 in the first level struct you can
disallow that too same as if it were placed under the flag. So no
second-level nesting required. Probably the first level pointer is
alreay making some people vomit but it's useful and for some syscalls
almost cannot be avoided.

But I think that we need some documented consensus on all that stuff
which I stressed in other mails before. I'll hand something in about
this, if that's ok than we can hash this out.

Christian

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
