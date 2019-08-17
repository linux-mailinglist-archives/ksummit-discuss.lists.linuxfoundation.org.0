Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 551DE91360
	for <lists@lfdr.de>; Sat, 17 Aug 2019 23:42:40 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 46EE71009;
	Sat, 17 Aug 2019 21:42:14 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C08F38B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 Aug 2019 21:42:12 +0000 (UTC)
X-Greylist: delayed 00:06:40 by SQLgrey-1.7.6
Received: from utopia.booyaka.com (utopia.booyaka.com [74.50.51.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7FD2676D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 Aug 2019 21:42:11 +0000 (UTC)
Received: (qmail 15814 invoked by uid 1019); 17 Aug 2019 21:35:29 -0000
Received: from localhost (sendmail-bs@127.0.0.1)
	by localhost with SMTP; 17 Aug 2019 21:35:29 -0000
Date: Sat, 17 Aug 2019 21:35:29 +0000 (UTC)
From: Paul Walmsley <paul@pwsan.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
In-Reply-To: <20190715170045.GB3068@mit.edu>
Message-ID: <alpine.DEB.2.21.999.1908172131550.15337@utopia.booyaka.com>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai> <20190715125800.22a9a979@coco.lan>
	<20190715170045.GB3068@mit.edu>
User-Agent: Alpine 2.21.999 (DEB 260 2018-02-26)
MIME-Version: 1.0
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
 meaningful
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

On Mon, 15 Jul 2019, Theodore Y. Ts'o wrote:

> I'd suggest changing the text to read:
> 
>  	 - Acked-by: indicates an agreement by the maintainer or
> 	   reviewer of the the relevant code that the patch is
> 	   appropriate for inclusion into the kernel.

This would be a positive step forward.  I would be in favor of this. 

It would also be good to state here, if it isn't stated already, that 
"reviewer" means "someone who is listed in an R: line in MAINTAINERS".


- Paul
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
