Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FE98DC6D
	for <lists@lfdr.de>; Wed, 14 Aug 2019 19:55:20 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5C0BBDA6;
	Wed, 14 Aug 2019 17:55:06 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 19637DA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Aug 2019 17:55:04 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A7D1D8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Aug 2019 17:55:03 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 44EB220651
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Aug 2019 17:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1565805303;
	bh=B8LFexXgXaX7KGXwbHXjFJQDK6KRVviSHoArk5L8kGg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=fiSfKTkmYOvyPXFszWdICoFC7xvalRYtH29Hl9ZY6ytxic13pJQERqWTR5prCbSpJ
	hsgHx3AfPa+2DyDp/hNBzoPNJyNYHaVcqhtWpb6dxtOAs5UD8xmjsyP7A77UczXGLQ
	3AyjHVSW+UvR6lmgN3DgJ3UooPLAMiUKW/2Fcrj4=
Received: by mail-wr1-f54.google.com with SMTP id j16so9666661wrr.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Aug 2019 10:55:03 -0700 (PDT)
X-Gm-Message-State: APjAAAXxOe7aP4n+P0moot2FBUjELAlK4AXlwY9z8894y1nRZCLINIJ5
	zD7tEqT3706ZnM8/RFrfdkCXCbLg+TTgvm6oTWvLGQ==
X-Google-Smtp-Source: APXvYqzAPdd9cEcnxG2KsiB0mcI5ULQ3DpO6ftmdpShR0K0aCfZBCpV5fCSF0AnoGO7H9SwYVM6fA6Nw4ViIqMERsvs=
X-Received: by 2002:adf:f18c:: with SMTP id h12mr966755wro.47.1565805301815;
	Wed, 14 Aug 2019 10:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
	<CALCETrVpbSDraiwJRmOj28wepTjEPiSDQz=DUuSig_P1rSGZ6Q@mail.gmail.com>
	<201907192007.B43158B@keescook>
In-Reply-To: <201907192007.B43158B@keescook>
From: Andy Lutomirski <luto@kernel.org>
Date: Wed, 14 Aug 2019 10:54:49 -0700
X-Gmail-Original-Message-ID: <CALCETrXWWS-8t5udg593CoWP330L=W94xsvB_skL-oL2tUFH+g@mail.gmail.com>
Message-ID: <CALCETrXWWS-8t5udg593CoWP330L=W94xsvB_skL-oL2tUFH+g@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] seccomp
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

On Fri, Jul 19, 2019 at 8:18 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Jul 19, 2019 at 05:32:59AM -0700, Andy Lutomirski wrote:
> > On Fri, Jul 19, 2019 at 2:35 AM Christian Brauner <christian@brauner.io> wrote:
> > >
> > > In light of all this, I would argue that we should seriously look into
> > > extending seccomp to allow filtering on pointer arguments.
>
> I would be all for this. :) I've struggled for a long while trying to
> find a sane design for this.
>
> > I won't be at LPC this year, but I was thinking about this anyway.  I
> > have the following suggestion that might be a bit unorthodox: have
> > syscalls opt into this filtering.  Specifically, a syscall that
> > supports pointer filtering would be refactored the way a bunch of our
> > syscalls are already refactored.  The baseline situation is:
> >
> > SYSCALL_DEFINE1(syscallname, struct foo __user *, buf) { ... }
> >
> > Instead, we would do:
> >
> > SYSCALL_FILTERABLE(syscallname, struct foo __user *, buf)
> > {
> >   int ret;
> >   struct foo kbuf;
> >   ret = copy_from_user(&kbuf, buf, sizeof(buf));
> >   if (ret)
> >     return ret;
> >
> >   ret = seccomp_deep_filter(syscallname, 0, &kbuf);
> >   if (ret)
> >     return ret;
> >
> >   return do_syscallname(&kbuf);
> > }
> >
> > In principle, if we know we're doing a FILTERABLE syscall, we could
> > skip the initial seccomp invocation and just defer it until
> > seccomp_deep_filter(), although this might interact badly with any
> > SECCOMP_RET_PTRACE handles that change nr.
>
> I don't like splitting the logic on seccomp invocation (we end up needing
> to solve ordering issues maybe again), but I do like this explicit
> opt-in feature. How you have it does make the "where do we store a cached
> copy?" problem go away, too.

After thinking about this a bit more, I think that deferring the main
seccomp filter invocation until arguments have been read is too
problematic.  It has the ordering issues you're thinking of, but it
also has unpleasant effects if one of the reads faults or if
SECCOMP_RET_TRACE or SECCOMP_RET_TRAP is used.  I'm thinking that this
type of deeper inspection filter should just be a totally separate
layer.  Once the main seccomp logic decides that a filterable syscall
will be issued then, assuming that no -EFAULT happens, a totally
different program should get run with access to arguments.  And there
should be a way for the main program to know that the syscall nr in
question is filterable on the running kernel.

Does that make sense?
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
