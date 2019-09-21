Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 53007B9F90
	for <lists@lfdr.de>; Sat, 21 Sep 2019 21:13:38 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 18C14B6C;
	Sat, 21 Sep 2019 19:13:18 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A7150A7F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Sep 2019 19:13:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 57855711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Sep 2019 19:13:15 +0000 (UTC)
Received: from localhost.localdomain (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 643B04FA;
	Sat, 21 Sep 2019 19:13:13 +0000 (UTC)
Date: Sat, 21 Sep 2019 13:13:07 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20190921131307.77d01ebb@lwn.net>
In-Reply-To: <20190918082326.49a19a24@coco.lan>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<201909162032.F4462D3@keescook> <20190917102817.263517b5@coco.lan>
	<201909170930.B8AD840@keescook> <20190918082326.49a19a24@coco.lan>
Organization: LWN.net
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] single maintainer profile directory (was Re:
 [PATCH] media: add a subsystem profile documentation)
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

On Wed, 18 Sep 2019 08:23:26 -0300
Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:

> A simple/lazy solution would be to apply the enclosed patch - or a
> variant of it that would place the contents of MAINTAINERS outside
> process/index.html, and add instructions about how to use
> get_maintainers.pl.
> 
> Jon,
> 
> Please let me know if you're willing to accept something like that.

[Sorry for the slowness, I'm kind of tuned out this week]

I guess we could do that as a short-term thing.

In truth, though, this thing is a database; printing it out linearly is
perhaps not the best thing we could do.  There should be better ways we
could provide access to it.

Also, that file is nearly 18K lines long.  If some unsuspecting person
generates a PDF and prints it, they're going to get something along the
lines of 300 pages of MAINTAINERS, which may not quite be what they had
in mind.  It costs (almost) nothing to put that into HTML output, but
other formats could be painful.

So I dunno, we need to think this through a bit...

jon
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
