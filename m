Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id B217B6E389
	for <lists@lfdr.de>; Fri, 19 Jul 2019 11:36:30 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BDA0A2434;
	Fri, 19 Jul 2019 09:36:16 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D99D42426
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 19 Jul 2019 09:35:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2437DF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 19 Jul 2019 09:35:58 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id a15so28122569wmj.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 19 Jul 2019 02:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
	h=date:from:to:cc:subject:message-id:mime-version:content-disposition
	:user-agent; bh=BFPK+3vF5EqJryreq/jeZ8x0a81ZUZoNYDXR/ZKFpIw=;
	b=YVDw2E0pv2zUMw/Yl9XeUimh6PQoQ737CgdzavHd+RpwzlTQnvsX5fKyiYWTJ8Hwjx
	el2fQ/CC2C2hUAaZjJg74ZNu+snnjRC2LDDklRd6Ozq+j5eaw5I34JUTiwPFLVjxhw85
	Rc50WhkWqgu9skbsbv63+7ETwx/PYt2caZRBv+y5v0908RANrJmey81B8/wRxwQBzJ+N
	1Vl+0Ew90PYpBecPz+rzc+8LkTsRvuBsHrOCZRngBrXO4mEtzit2gMn6ila7vvFLqDIQ
	xlsmm7tzGdLjPscukAM+9IrhgR5JWuXRK0g0FVtvQnND9i2o475F3spR2fzCaCDw9KjO
	IyzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=BFPK+3vF5EqJryreq/jeZ8x0a81ZUZoNYDXR/ZKFpIw=;
	b=evw5Av/ABRqv1Kzi1Q83mS96Wq3L96/wefO02gmleXPKctUKhLDOr2nz2C7wlRo/nT
	xh7uTQCsPk7Z10sWfwpVziaTMuBr+I+CHGTK03AMWKfQytyo86PPC1UBdJHdentr4Niz
	JLuSSwLgWZd+yO0AKHqRNs514rCmwr/UNZZEDLZev/J3pGuAkYwbYMoglxguZqmjQLab
	7m12p1L9PrjTi19lo78+xAmhB9fyAGyeVSJiksW3siU3JU2M5msA2/D4JWWzH3pK05/U
	YQZfMzC8y2UVsG1e3CvCYOo3ZIXYi6IPVfMgIKU1XTse4cm+sjoMD2ZAdYwXZf6GDcOJ
	36lg==
X-Gm-Message-State: APjAAAXOwtIzugtHpDY9S68MQj9u2FwRQMv3NRqGyMZyKJxVP9WKWKob
	/OidXlD4tyB4o2oQDsUD128TlC8+qjQ=
X-Google-Smtp-Source: APXvYqyBGKCcFzdROqf5OAYFDGDGhafOdp9Xn+NPSdeqaMd60oKcfyFXcLKU+W7NW6jTA931D0BQ4g==
X-Received: by 2002:a05:600c:2218:: with SMTP id
	z24mr47069563wml.84.1563528956386; 
	Fri, 19 Jul 2019 02:35:56 -0700 (PDT)
Received: from brauner.io ([81.92.17.138]) by smtp.gmail.com with ESMTPSA id
	k124sm46140243wmk.47.2019.07.19.02.35.55
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Fri, 19 Jul 2019 02:35:55 -0700 (PDT)
Date: Fri, 19 Jul 2019 11:35:54 +0200
From: Christian Brauner <christian@brauner.io>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190719093538.dhyopljyr5ns33qx@brauner.io>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: [Ksummit-discuss]  [TECH TOPIC] seccomp
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

Hey everyone,

I would like to discuss approaches to enabling deep argument inspection
with seccomp and if we reach an agreement am also happy to do the work
and implement it.

Recently we landed seccomp support for SECCOMP_RET_USER_NOTIF which
enables a process (watchee) to retrieve a fd for its seccomp filter.
This fd can then be handed to another (usually more privileged)
process (watcher).
The watcher will then be able to receive seccomp messages about the
syscalls having been performed by the watchee.

I have integrated this feature into userspace. We currently make heavy
use of this to intercept mknod() syscalls in user namespaces aka in
containers.
If the mknod() syscall matches a device in a pre-determined whitelist
the privileged watcher will perform the mknod syscall in lieu of the
unprivileged watchee and report back to the watchee on the success or
failure of its attempt. If the syscall does not match a device in a
whitelist we simply report an error.

We recently also started to intercept the setxattr() syscall to allow
the creation of various, well-known xattrs including
trusted.overlay.opaque.

The mknod() syscall can be easily filtered based on dev_t. This allows
us to only intercept a very specific subset of mknod() syscalls.
Furthermore, mknod() is not possible in user namespaces toto coelo and
so intercepting and denying syscalls that are not in the whitelist on
accident is not a big deal. The watchee won't notice a difference.

In contrast to mknod(), setxattr() and many other syscalls that we would
like to intercept suffer from two major problems:
1. they are not easily filterable like mknod() because they have pointer
   arguments
2. some of them might actually succeed in user namespaces already (e.g.
   fscaps etc.)

The 1. problem is not specific to SECCOMP_RET_USER_NOTIF but also
apparently affects future system call design.
We recently merged the clone3() syscall into mainline which moves the
flag from a register argument into a dedicated extensible struct
clone_args to lift the flag limit from legacy clone() and allowing for
extensions while supporting all legacy workloads.

One of the counter arguments leveraged against my design early on was
that this means clone3() cannot be easily filtered by seccomp due to 1.
This argument was fortunately not seen as defeating.
I would argue that there sure is value in trying to design syscalls that
can be handled by seccomp nicely but that seccomp can't become a burden
on designing extensible syscalls.
The openat2() syscall proposed currenly also does use a dedicated
argument struct which contains flags and the seccomp argument popped
back up again.

In light of all this, I would argue that we should seriously look into
extending seccomp to allow filtering on pointer arguments.

There is a close connection between 1. and 2. When a watcher intercepts
a syscall from a watchee and starts to inspect its arguments it can -
depending on the syscall rather often actually - determine whether or
not the syscall would succeed or fail. If it knows that the syscall will
succeed it currently still has to perform it in lieu of the watchee
since there is no way to tell the kernel to "resume" or actually perform
the syscall. It would be nice if we could discuss approaches to enabling
this feature as well.

I'm happy to lead this session and can also illustrate how this feature
is heavily used and how we run into its limitations.

Thanks!
Christian
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
