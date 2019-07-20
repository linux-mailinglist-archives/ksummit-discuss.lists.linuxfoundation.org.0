Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CA97B6ED82
	for <lists@lfdr.de>; Sat, 20 Jul 2019 05:18:49 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 24555193A;
	Sat, 20 Jul 2019 03:18:36 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A3759190F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Jul 2019 03:18:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 41282E6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Jul 2019 03:18:33 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id c73so14948952pfb.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 19 Jul 2019 20:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to;
	bh=FenOBRQhcJ/DIpAAuhIRy0q901rlN5cMuZqjDUv2V9U=;
	b=ENgNdZESOCbQ3IS8ZSyuNjX5gOQRe3Elks4ByDee81cu0RZbQ6fkxFALwQmWz57Jr3
	5ZauFUMBZB5ZqFZ4yHrUyigr/a4kNU+uQBrHUS5vMgYdLoq2vjkbvugY6/LiQ82movz8
	Pw2ZrvGPvfotIE83RzDpEVJwmKkGmQZ/CbqiI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=FenOBRQhcJ/DIpAAuhIRy0q901rlN5cMuZqjDUv2V9U=;
	b=KJjwzCYCyhu+pklMtEKGEiEnBKGa7V3dgBrifIK95nJV7z6GiwSFKzOkI/lWbpNlzP
	8lZUVSXevq/Cczuhmc7kukoqKt1UUm5Akt2jJeoQQfoIAHLeFgk7M0lpVFw/VTEx36on
	y4hf4QSrhVqAUPt4nM1FxOgMUK6B3zPCku+8bQqkUujAAnPs5oV63+h42HzaISkyl6Dr
	kOe/SiaKIF4l4NZqEh4hhI3xWJuCXYIx5Vb5oAjlLRia+9dne6hAOjRI/nIRZfE1NOsl
	vLXwJjlkeqvOsohzenvXoJX6EnjDR8rIZxm1dEWooxxA9mpn3p44C5dBYdsLaB1NRxlt
	6W3A==
X-Gm-Message-State: APjAAAW7jae9E8m02I3RVHcKaeSAkUv0ze6rJ2qHhj2uCBzp3dqsjGph
	i3fnxTbUgh0t2mNDkArOlUMIrQ==
X-Google-Smtp-Source: APXvYqxtGQbsW8y3xZzTeeCGUw8eYwxbVl5RMLld8NeMCX+mFBxESMyrwLc/i/Xl19uaSKKFOhR64g==
X-Received: by 2002:a17:90a:f491:: with SMTP id
	bx17mr63193560pjb.118.1563592712704; 
	Fri, 19 Jul 2019 20:18:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
	by smtp.gmail.com with ESMTPSA id
	m4sm42564018pgs.71.2019.07.19.20.18.31
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 19 Jul 2019 20:18:31 -0700 (PDT)
Date: Fri, 19 Jul 2019 20:18:30 -0700
From: Kees Cook <keescook@chromium.org>
To: Andy Lutomirski <luto@kernel.org>
Message-ID: <201907192007.B43158B@keescook>
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
	<CALCETrVpbSDraiwJRmOj28wepTjEPiSDQz=DUuSig_P1rSGZ6Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALCETrVpbSDraiwJRmOj28wepTjEPiSDQz=DUuSig_P1rSGZ6Q@mail.gmail.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Fri, Jul 19, 2019 at 05:32:59AM -0700, Andy Lutomirski wrote:
> On Fri, Jul 19, 2019 at 2:35 AM Christian Brauner <christian@brauner.io> wrote:
> >
> > In light of all this, I would argue that we should seriously look into
> > extending seccomp to allow filtering on pointer arguments.

I would be all for this. :) I've struggled for a long while trying to
find a sane design for this.

> I won't be at LPC this year, but I was thinking about this anyway.  I
> have the following suggestion that might be a bit unorthodox: have
> syscalls opt into this filtering.  Specifically, a syscall that
> supports pointer filtering would be refactored the way a bunch of our
> syscalls are already refactored.  The baseline situation is:
> 
> SYSCALL_DEFINE1(syscallname, struct foo __user *, buf) { ... }
> 
> Instead, we would do:
> 
> SYSCALL_FILTERABLE(syscallname, struct foo __user *, buf)
> {
>   int ret;
>   struct foo kbuf;
>   ret = copy_from_user(&kbuf, buf, sizeof(buf));
>   if (ret)
>     return ret;
> 
>   ret = seccomp_deep_filter(syscallname, 0, &kbuf);
>   if (ret)
>     return ret;
> 
>   return do_syscallname(&kbuf);
> }
> 
> In principle, if we know we're doing a FILTERABLE syscall, we could
> skip the initial seccomp invocation and just defer it until
> seccomp_deep_filter(), although this might interact badly with any
> SECCOMP_RET_PTRACE handles that change nr.

I don't like splitting the logic on seccomp invocation (we end up needing
to solve ordering issues maybe again), but I do like this explicit
opt-in feature. How you have it does make the "where do we store a cached
copy?" problem go away, too.

With a solution looming, now my mind turns to "how do we write filters
that check argument data?" Can this be done sanely with cBPF or are we
finally to requiring eBPF?

The placement of the seccomp hook looks rather like an LSM, which gets
me back to earlier LSM hooking designs I'd considered:
https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=seccomp/lsm&id=10c1e4d2b51ad61ad516fa44c2e007f3f5f6edfb
Which also didn't solve the split-location of seccomp rules and wasn't
creating a dynamic way to do, say, string matching.

> To make this robust, it might help a lot if the generation of these
> stubs was mostly automated.

Agreed.

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
