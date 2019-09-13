Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id EE70AB18AA
	for <lists@lfdr.de>; Fri, 13 Sep 2019 09:10:09 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7686C49F;
	Fri, 13 Sep 2019 07:09:46 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2565340B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 07:09:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2212281A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 07:09:43 +0000 (UTC)
Received: from localhost.localdomain (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id D794177D;
	Fri, 13 Sep 2019 07:09:40 +0000 (UTC)
Date: Fri, 13 Sep 2019 01:09:37 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <20190913010937.7fc20d93@lwn.net>
In-Reply-To: <9132e214-9b57-07dc-7ee2-f6bc52e960c5@kernel.dk>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<20190911184332.GL20699@kadam>
	<9132e214-9b57-07dc-7ee2-f6bc52e960c5@kernel.dk>
Organization: LWN.net
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org,
	Vishal Verma <vishal.l.verma@intel.com>,
	linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [PATCH v2 3/3] libnvdimm,
 MAINTAINERS: Maintainer Entry Profile
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

On Wed, 11 Sep 2019 16:11:29 -0600
Jens Axboe <axboe@kernel.dk> wrote:

> On 9/11/19 12:43 PM, Dan Carpenter wrote:
> > 
> > I kind of hate all this extra documentation because now everyone thinks
> > they can invent new hoops to jump through.  
> 
> FWIW, I completely agree with Dan (Carpenter) here. I absolutely
> dislike having these kinds of files, and with subsystems imposing weird
> restrictions on style (like the quoted example, yuck).
> 
> Additionally, it would seem saner to standardize rules around when
> code is expected to hit the maintainers hands for kernel releases. Both
> yours and Martins deals with that, there really shouldn't be the need
> to have this specified in detail per sub-system.

This sort of objection came up at the maintainers summit yesterday; the
consensus was that, while we might not like subsystem-specific rules, they
do currently exist and we're just documenting reality.  To paraphrase
Phillip K. Dick, reality is that which, when you refuse to document it,
doesn't go away.

So I'm expecting to take this kind of stuff into Documentation/.  My own
personal hope is that it can maybe serve to shame some of these "local
quirks" out of existence.  The evidence from this brief discussion suggests
that this might indeed happen.

Thanks,

jon
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
