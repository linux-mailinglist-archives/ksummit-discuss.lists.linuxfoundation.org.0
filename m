Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D14F3968
	for <lists@lfdr.de>; Thu,  7 Nov 2019 21:17:47 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BC757E70;
	Thu,  7 Nov 2019 20:13:18 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6CA7ADB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  7 Nov 2019 20:13:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 322C4710
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  7 Nov 2019 20:13:16 +0000 (UTC)
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id ED69F6EC;
	Thu,  7 Nov 2019 20:13:14 +0000 (UTC)
Date: Thu, 7 Nov 2019 13:13:13 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20191107131313.26b2d2cc@lwn.net>
In-Reply-To: <20191001075559.629eb059@lwn.net>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<156821693396.2951081.7340292149329436920.stgit@dwillia2-desk3.amr.corp.intel.com>
	<20191001075559.629eb059@lwn.net>
Organization: LWN.net
MIME-Version: 1.0
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: vishal.l.verma@intel.com, ksummit-discuss@lists.linuxfoundation.org,
	linux-nvdimm@lists.01.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, Dmitry Vyukov <dvyukov@google.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Steve French <stfrench@microsoft.com>, "Tobin C. Harding" <me@tobin.cc>
Subject: Re: [Ksummit-discuss] [PATCH v2 2/3] Maintainer Handbook:
	Maintainer Entry Profile
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

Hi, Dan,

A month or so ago I wrote...

> > See Documentation/maintainer/maintainer-entry-profile.rst for more details,
> > and a follow-on example profile for the libnvdimm subsystem.  
> 
> Thus far, the maintainer guide is focused on how to *be* a maintainer.
> This document, instead, is more about how to deal with specific
> maintainers.  So I suspect that Documentation/maintainer might be the
> wrong place for it.
> 
> Should we maybe place it instead under Documentation/process, or even
> create a new top-level "book" for this information?

Unless I missed it, I've not heard back from you on this.  I'd like to get
this stuff pulled in for 5.5 if possible...  would you object if I were to
apply your patches, then tack on a move over to the process guide?

Thanks,

jon
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
