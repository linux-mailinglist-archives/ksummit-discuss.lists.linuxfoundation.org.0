Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF30A58F1
	for <lists@lfdr.de>; Mon,  2 Sep 2019 16:14:50 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D85C0B5F;
	Mon,  2 Sep 2019 14:14:37 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CDDA86067
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 13:58:59 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8C8A813A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 13:58:59 +0000 (UTC)
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2F47223426;
	Fri, 30 Aug 2019 13:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1567173539;
	bh=+yN9DcfYhfH0PpHQArvsoMHcjXK89fHZtfSH72a+jXI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OqsWuKY7B3RU5v6KT3bf7T4YIorSXarE8rAYPwd/9uUJodbLRmPAthg5m4qkMjprd
	iNqFDPb3y9n3Fp25HjKsr4aE1lyM3ofHyKaoxOPbDnPup01yjtPbL+B23/d4p4DqpV
	eqWUqp+4BuBlWwtqDZ65vwcpcDLsbBShNDjL0RY4=
Date: Fri, 30 Aug 2019 08:58:57 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Message-ID: <20190830135857.GF7013@google.com>
References: <20190830031720.GA7490@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830031720.GA7490@mit.edu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Mon, 02 Sep 2019 14:14:35 +0000
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
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

On Thu, Aug 29, 2019 at 11:17:20PM -0400, Theodore Y. Ts'o wrote:
> ...
> Are there some additional topics that you'd like to suggest that we
> discuss at the maintainer's summit?

I don't have an effective workflow for managing incoming patches.  I
use a hodge-podge of patchwork, gmail, mutt, and ugly private scripts
to put patches on topic branches, review them, polish them, merge them
together into a "-next" branch, generate pull requests, etc.

I wish there were a collection of the workflows and scripts people
use, maybe even in the kernel sources so they could be shared and
improved.  Some short screencasts could help visualize and pull things
together.  I know a lot of this stuff is "out there" somewhere, but
I'm not aware of any organized collection.

Bjorn
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
