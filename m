Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C567E550380
	for <lists@lfdr.de>; Sat, 18 Jun 2022 10:25:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B7F660ED4;
	Sat, 18 Jun 2022 08:25:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B7F660ED4
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=WyXx/AM2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p5Wc5-BGdz41; Sat, 18 Jun 2022 08:25:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 51C3B60EBD;
	Sat, 18 Jun 2022 08:25:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51C3B60EBD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BF450C002D;
	Sat, 18 Jun 2022 08:24:58 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B4B50C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 08:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 886E541720
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 08:24:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 886E541720
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WyXx/AM2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S8qDWhtTqh29
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 08:24:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A82541706
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A82541706
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 08:24:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D1CB960C41;
 Sat, 18 Jun 2022 08:24:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D3E9C3411A;
 Sat, 18 Jun 2022 08:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655540693;
 bh=YpB8x5eJNo2ZTenJ/AEcYJ+xcVHa1RlzgMTrNThO33c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WyXx/AM2ppzOLfYdIhHE1VFOALznW2iKY1fL/zs7zt9U8TECSG0RmClF4sOHt5jNj
 f2aB1EDnIQf0P/ELl0JPwMw7wQPNN+wTkjmJNggI89zutTMxyMnYvUvwKz5pYR7KRT
 qrT0PNqWOeNDApMMzDayPD/XAaOJPjV2vzEW6l1bxyl8zWJBAMaQkbQnMvBKFiUryc
 LaxxM6U4Om6MrS8XBmmpjVa6Gyb+7oWdOKF/bvdQ/nwCpCKGYeJghXtisscoZsXphf
 mmvDZXKpZ/laa0sMpMu+HpPfcUFejtYrmP9dA9TY0pB2xSmCsLkACCpSJj0pF75pYG
 4L3x5Wpy7NnSw==
Date: Sat, 18 Jun 2022 09:24:47 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20220618092447.5ebed314@sal.lan>
In-Reply-To: <87sfo3nh3t.fsf@meer.lwn.net>
References: <87sfo3nh3t.fsf@meer.lwn.net>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Cc: ksummit@lists.linux.dev, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] What kernel documentation could
 be
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

Hi John,

Em Fri, 17 Jun 2022 14:57:10 -0600
Jonathan Corbet <corbet@lwn.net> escreveu:

> The development community has put a lot of work into the kernel's
> documentation directory in recent years, with visible results. But the
> kernel's documentation still falls far short of the standard set by many
> other projects, and there is a great deal of "tribal knowledge" in our
> community that is not set down. I'd like to look at the successes and
> failures of the work so far, but intent to focus on a discussion of what
> our documentation should be and what we can do to get it there.
> 
> Questions to discuss include:
> 
>  - Bringing an coherent overall structure to Documentation/

Fully agreed. We dedicated a lot of resources on the past years to
convert documentation to ReST and on kernel-doc, but not so much
on placing the topics at the right order.

There are a huge amount of such documentation that describe border cases,
or have just kernel-doc tags without any (or very small) descriptions.
Kernel-doc markups are important, as they help to keep the documentation
updated, but explaining subsystem's principles is equally important, as
it can save a lot of time from maintainers if the contributors are aware
on how and why the subsystem's kAPIs were organized the way it is.

We should imagine documentation as if this is a series of books describing
every aspect of the kernel. So, I would expect it to be organized with
some structure that would place the topics on some order that would make
easier for people to read, being either new contributors or experienced
developers that need to touch other parts of the Kernel that are out of
his past experiences.

For instance to the kAPI documentation, I would expect something like:

	- How to contribute / Submission process;
	- An introductory chapter that would describe the most used
	  components that all developers need to know, like:

		- how to write a driver;
		- fs principles;
		- scheduler principles;
		- mm most used functions (kmalloc & friends);
		- wait queues;
		- kernel threads;
		- softirqs;
		- arch-dependent items to consider (like bit order), weak
		  memory model, etc;
		- ...

	  IMO, we could take a look at the index of some already-existing 
	  books like LDD 3, Linux Kernel Development and others in order to
	  get a rough idea about the items to be covered there.
	- Bus-related subsystems (USB, PCI, I2C, ...);
	- Then, place per-subsystem's documentation, all having their
	  texts explaining basic principles.

IMO, we should write an index file and a couple of new ReST files with an
skeleton for the above, and then ask people to help filling the blanks.

>  - Making it easier for developers to improve the documentation.

A well-prepared skeleton would make life easier. From time to time, we
have discussions and patches shifting documentation between different
directories.

>  - What we would like from Sphinx and what we can do to make it happen

The big missing feature on Sphinx itself is with regards to per-C-type
domain. So, if we have one struct and one function both called "foo",
the cross-references will be broken. This issue is known since Sphinx
3.1, and there are already patches fixing it since then (I remember
testing them) but, up to today, the Sphinx upstream patches meant
to fix it weren't applied yet (as far as I can tell).

Another problem is with regards to the documentation's build time.

One feature we're not using yet is intersphinx. Right now, we can
build parts of the documentation with:

	make SPHINXDIRS="foo" htmldocs

But, if "foo" have cross-references to "bar", the build will produce
warnings and the documentation's cross-references to "bar" won't work.

Properly setting interphinx would allow this to work, as such references
would point, instead, to some remote place (like kernel.org).

This could be used to help improving the documentation's build time 
during doc development.

Also, I would love to have a good way to just produce html (and pdf) from
the documents I'm actually working with. The way I do it right now is
that I create a "Documentation/foo" directory, adding there just the docs
I'm currently working with, placing them on a fake index.rst file.

This way, I can build them really fast, without needing to rebuild
everything at the same book. Perhaps something like that could be 
automated - or Sphinx itself could support something like:

	make htmldocs SPHINXFILES="foo.rst bar.rst"

>  - Making the docs build system less ugly and more maintainable

I guess shifting the minimal Sphinx version would help to remove some
bad things there.

One thing that probably be solved on a different way is to have
a better solution for things like:

	Functions for feature 1
	=======================

	.. kernel-doc:: include/some_header.h
	   :doc: Feature 1

	.. kernel-doc:: include/some_header.h
	   :functions:
		func1
		func2

	Functions for feature 2
	=======================

	.. kernel-doc:: include/some_header.h
	   :doc: Feature 2

	.. kernel-doc:: include/some_header.h
	   :functions:
		func3
		func4

Perhaps we could change Kernel-doc in a way that doing just:

	.. kernel-doc:: include/some_header.h

would be enough.

> - Integrating rustdoc documentation

Won't comment much about that, as never touched any of those.

Life would be a lot easier on this side if rustdoc could
support ReST.

Regards,
Mauro
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
