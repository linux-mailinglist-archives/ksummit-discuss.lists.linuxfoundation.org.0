Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id DE16C8F34E
	for <lists@lfdr.de>; Thu, 15 Aug 2019 20:26:41 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 01B1A10A5;
	Thu, 15 Aug 2019 18:26:29 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9B4631095
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 18:26:26 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F137067F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 18:26:23 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 85ACB2086C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 18:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1565893583;
	bh=I72y5h2WIX26c0jTCaecDanLDhkU57kgCxlPK42vPtM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=xhPjtjfghN6nxrI7hwYjmhSstWrmEfUYNn2Ct39PGXcoOkD3aXGcQXiUUJqW6OVGb
	G9mW9paFjcIUqVPLaA3F6UREgeA7vakZqkGeUBXlZAeotLm5KjYBfyIGRKDmCiAbuA
	gvZ4g3hWz4hurGd8IOiKEJzXMHB1x9PUL4hLPV3Q=
Received: by mail-wm1-f47.google.com with SMTP id i63so2025422wmg.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 11:26:23 -0700 (PDT)
X-Gm-Message-State: APjAAAV8BGVsPA6k81j0ZjnDmH8A2qeb+KA6X+kV1kUc8hvzpWPmRQoF
	24aI92kiDt1gdeNQW1nN1rKtHfvaAt/JQoBIA94sGg==
X-Google-Smtp-Source: APXvYqxQ739WGZrT/5+0MoSBHX4KfJx1Rh9Le0KS7LYV1fYjI9t0JvX3uIAEVWHtkV/Yc/4FJohdpiOmhkkFFD+1e7g=
X-Received: by 2002:a7b:c4d2:: with SMTP id g18mr3995194wmk.79.1565893582018; 
	Thu, 15 Aug 2019 11:26:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
	<CALCETrVpbSDraiwJRmOj28wepTjEPiSDQz=DUuSig_P1rSGZ6Q@mail.gmail.com>
	<201907192007.B43158B@keescook>
	<CALCETrXWWS-8t5udg593CoWP330L=W94xsvB_skL-oL2tUFH+g@mail.gmail.com>
	<201908151034.CC0F7BD84@keescook>
In-Reply-To: <201908151034.CC0F7BD84@keescook>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 15 Aug 2019 11:26:10 -0700
X-Gmail-Original-Message-ID: <CALCETrV+tk9irkoRTQCk+Ve37kce3V+7M1rFWwoDD8YqZS3p7Q@mail.gmail.com>
Message-ID: <CALCETrV+tk9irkoRTQCk+Ve37kce3V+7M1rFWwoDD8YqZS3p7Q@mail.gmail.com>
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

On Thu, Aug 15, 2019 at 10:48 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Aug 14, 2019 at 10:54:49AM -0700, Andy Lutomirski wrote:
> > After thinking about this a bit more, I think that deferring the main
> > seccomp filter invocation until arguments have been read is too
> > problematic.  It has the ordering issues you're thinking of, but it
> > also has unpleasant effects if one of the reads faults or if
> > SECCOMP_RET_TRACE or SECCOMP_RET_TRAP is used.  I'm thinking that this
>
> Right, I was actually thinking of the trace/trap as being the race.
>
> > type of deeper inspection filter should just be a totally separate
> > layer.  Once the main seccomp logic decides that a filterable syscall
> > will be issued then, assuming that no -EFAULT happens, a totally
> > different program should get run with access to arguments.  And there
> > should be a way for the main program to know that the syscall nr in
> > question is filterable on the running kernel.
>
> Right -- this is how I designed the original prototype: it was
> effectively an LSM that was triggered by seccomp (since LSMs don't know
> anything about syscalls -- their hooks are more generalized). So seccomp
> would set a flag to make the LSM hook pay attention.
>
> Existing LSMs are system-owner defined, so really something like Landlock
> is needed for a process-owned LSM to be defined. But I worry that LSM
> hooks are still too "deep" in the kernel to have a process-oriented
> filter author who is not a kernel developer make any sense of the
> hooks. They're certainly oriented in a better position to gain the
> intent of a filter. For example, if a filter says "you can't open(2)
> /etc/foo", but it misses saying "you can't openat(2) /etc/foo", that's a
> dumb exposure. The LSM hooks are positioned to say "you can't manipulate
> /etc/foo through any means".
>
> So, I'm not entirely sure. It needs a clear design that chooses and
> justifies the appropriate "depth" of filtering. And FWIW, the two most
> frequent examples of argument parsing requests have been path-based
> checking and network address checking. So any prototype needs to handle
> these two cases sanely...
>

But also clone() flag filtering, and new clone() proposals keep
wanting to add structs.  And filtering bpf().  /me runs.

But yes, doing this LSM-style could also make sense.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
