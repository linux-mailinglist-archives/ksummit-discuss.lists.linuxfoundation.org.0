Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCA5B22E1
	for <lists@lfdr.de>; Fri, 13 Sep 2019 17:04:33 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EDB551058;
	Fri, 13 Sep 2019 15:04:17 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5AB0BB4B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 15:04:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 06FD37D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 15:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
	Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=e/hIJfTWcXDfFC32tiB4lsYy4Zljj/dJMiHXZuN3p34=;
	b=bClGEAkRNXy3MAQE7G4W1FxIQ
	WfeX6ZNGCWcliW+0KAP/Y5KD9xG+z66PGn1ZxAmjOaOEFSAvxEJOOQUqEbFR5wyZV9I3mdPM1Ou9n
	MCU3WexzKjCdKzGsAaAxK5Wd3YUhIJmJJVcFZXiPZzxLmdoUxj9YKFOQsLHofKcu208DJ8NEY95ah
	DLdrmHrp4I79gCJkhV4b+Yxe9jrChA59IgL/gTr9QTVivJ3crfn1dLr4/NT6toB1JRHA/VDj7uPyh
	TAi+gLaPTtD8oQg7RurZ5ZMzyKWSWnqUBRdIj0zhQLd5RnxrWjK+fPqTJYHjKhHRaIg22+NlzNjDF
	DdGknrInA==;
Received: from c-73-157-219-8.hsd1.or.comcast.net ([73.157.219.8]
	helo=[10.0.0.252])
	by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8n7H-0006kw-OR; Fri, 13 Sep 2019 15:04:10 +0000
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	ksummit-discuss@lists.linuxfoundation.org
References: <20190913073849.GA15965@mit.edu>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <29b46dfe-173b-7022-8676-f3c4000a8375@infradead.org>
Date: Fri, 13 Sep 2019 08:04:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190913073849.GA15965@mit.edu>
Content-Language: en-US
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: linux-kernel@vger.kernel.org, workflows@vger.kernel.org
Subject: Re: [Ksummit-discuss] New list for people to share maintainer
	workflows
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

On 9/13/19 12:38 AM, Theodore Y. Ts'o wrote:

> Let's continue the discussion on workflows@vger.kernel.org.

Hi,
Will this be archived on lore.kernel.org?

thnx.
-- 
~Randy
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
