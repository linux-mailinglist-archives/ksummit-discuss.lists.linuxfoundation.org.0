Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 337158F291
	for <lists@lfdr.de>; Thu, 15 Aug 2019 19:49:02 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 62B89EE4;
	Thu, 15 Aug 2019 17:48:43 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BFF37ACD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 17:48:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 67A7A67F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 17:48:41 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id n4so1617491pgv.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 10:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to;
	bh=yxU9DUAsjCQqZ2+6/QYqtW/nPVDq5PEoa09ydCnwGAM=;
	b=ha2kABf/nsd+wA0rAwVMRYaLfs0zdRS4R00mt4FWxrp4xqia4XFl/+y6hL/7XaasQ4
	G5NmAMOuDVECYsKTLYwNdNwR2H+P3U50NBL35yXfh0GhxwZjYMmWDIsu/xKV09Ph1KSo
	p2d5vgnZZ9uzocQzjZc3Phu4Fj8o5lJjAiurA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=yxU9DUAsjCQqZ2+6/QYqtW/nPVDq5PEoa09ydCnwGAM=;
	b=ZHV/FqQAU2ur9LBI/Py6e180AwLUXQGheY1H/w9oPIIUdLOxUDD9MK19p5NefF4LLw
	EYBSiczkxgWYjiQRob+C9ip2cmAvp5H4DF4IiPbgYEyPnI9QRi9ZShb2Z5+CuSBo8gQd
	C/MLDRmClR+MzmBPQvi17AbX4FFFr/jKcr3WBdxq/G+nQ+90x9kKTaZQ/WJg15gK7YqG
	6/B1UeTWaSYh4W7Q+fxUiEHP2hguA7HQdEb5QKXiQMR1WZUxiFr1tdmBiSKmBBT9Vy9G
	+vkrDujQJUsgs9xYe10aC4ZdDvmVCcKXWuTxa3nSuWyPqYcomiTL4iBtt8s2eMM3ZF+f
	FJxA==
X-Gm-Message-State: APjAAAVyfGDhZnlIsvPrg4wlZUtPMENOt1Ez9ztbKRtBhOmdka9OoKSg
	DbcJYp3Ev/tg66jZW0pNuG4Riw==
X-Google-Smtp-Source: APXvYqxUeVcb4j7AMhXcjP8FZfpbRIe/PpKPA7PD+1aFXeAs5P4pf/MuRx/7knFiKaKvNB9t1C4iag==
X-Received: by 2002:a63:4a0d:: with SMTP id x13mr4301237pga.75.1565891320938; 
	Thu, 15 Aug 2019 10:48:40 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
	by smtp.gmail.com with ESMTPSA id o9sm2543687pgv.19.2019.08.15.10.48.39
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 15 Aug 2019 10:48:39 -0700 (PDT)
Date: Thu, 15 Aug 2019 10:48:38 -0700
From: Kees Cook <keescook@chromium.org>
To: Andy Lutomirski <luto@kernel.org>
Message-ID: <201908151034.CC0F7BD84@keescook>
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
	<CALCETrVpbSDraiwJRmOj28wepTjEPiSDQz=DUuSig_P1rSGZ6Q@mail.gmail.com>
	<201907192007.B43158B@keescook>
	<CALCETrXWWS-8t5udg593CoWP330L=W94xsvB_skL-oL2tUFH+g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALCETrXWWS-8t5udg593CoWP330L=W94xsvB_skL-oL2tUFH+g@mail.gmail.com>
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

On Wed, Aug 14, 2019 at 10:54:49AM -0700, Andy Lutomirski wrote:
> After thinking about this a bit more, I think that deferring the main
> seccomp filter invocation until arguments have been read is too
> problematic.  It has the ordering issues you're thinking of, but it
> also has unpleasant effects if one of the reads faults or if
> SECCOMP_RET_TRACE or SECCOMP_RET_TRAP is used.  I'm thinking that this

Right, I was actually thinking of the trace/trap as being the race.

> type of deeper inspection filter should just be a totally separate
> layer.  Once the main seccomp logic decides that a filterable syscall
> will be issued then, assuming that no -EFAULT happens, a totally
> different program should get run with access to arguments.  And there
> should be a way for the main program to know that the syscall nr in
> question is filterable on the running kernel.

Right -- this is how I designed the original prototype: it was
effectively an LSM that was triggered by seccomp (since LSMs don't know
anything about syscalls -- their hooks are more generalized). So seccomp
would set a flag to make the LSM hook pay attention.

Existing LSMs are system-owner defined, so really something like Landlock
is needed for a process-owned LSM to be defined. But I worry that LSM
hooks are still too "deep" in the kernel to have a process-oriented
filter author who is not a kernel developer make any sense of the
hooks. They're certainly oriented in a better position to gain the
intent of a filter. For example, if a filter says "you can't open(2)
/etc/foo", but it misses saying "you can't openat(2) /etc/foo", that's a
dumb exposure. The LSM hooks are positioned to say "you can't manipulate
/etc/foo through any means".

So, I'm not entirely sure. It needs a clear design that chooses and
justifies the appropriate "depth" of filtering. And FWIW, the two most
frequent examples of argument parsing requests have been path-based
checking and network address checking. So any prototype needs to handle
these two cases sanely...

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
