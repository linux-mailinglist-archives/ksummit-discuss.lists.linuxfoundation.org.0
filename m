Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 92248B238A
	for <lists@lfdr.de>; Fri, 13 Sep 2019 17:37:42 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 851DCC3E;
	Fri, 13 Sep 2019 15:37:26 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AFC11B79
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 15:37:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2E59B7D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 15:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=C+bQZ7OsAJqgd02njLeMk4sII7e61xhtzjvOa7XtD9U=;
	b=LkfSSVWwb7TycH4MxAFooZ+0j
	oeUvu5zjwy2Yiys7K395tUgogQVaDKlSwq1AGTdPzzL6TWWbNMUt+kyY8N18KFI1McXNOYJbGhnW0
	0/SGEJVdGCxkKYkqfKqrFMDdPxcgV43kqxfdjznJ5VARwRai2ZYe1Sx3Ev/lZ0odSuK8Z7Q04kdcG
	QEkaYOtAEZmyyMa4h2xzjL0J9IN58sBNihZb9aUgbBVTk6ktsoyYLP4uRe8ejHAk8D4oskKC7UrNN
	8dtpPqur1rOd/G2wlkxT2GsubNaeEb9cOk6WKBr90R/WH+irQPankJzEtRDBueYae9XTqsJXoMXAQ
	yJYL1cscQ==;
Received: from 177.96.232.144.dynamic.adsl.gvt.net.br ([177.96.232.144]
	helo=coco.lan)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8ndR-0004rG-8P; Fri, 13 Sep 2019 15:37:21 +0000
Date: Fri, 13 Sep 2019 12:37:17 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20190913123717.31d5b470@coco.lan>
In-Reply-To: <156821692805.2951081.1395288717170089573.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<156821692805.2951081.1395288717170089573.stgit@dwillia2-desk3.amr.corp.intel.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: vishal.l.verma@intel.com, linux-kernel@vger.kernel.org,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org
Subject: Re: [Ksummit-discuss] [PATCH v2 1/3] MAINTAINERS: Reclaim the P:
 tag for Maintainer Entry Profile
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

Em Wed, 11 Sep 2019 08:48:48 -0700
Dan Williams <dan.j.williams@intel.com> escreveu:

> Fixup some P: entries to be M: and delete the others that do not include an
> email address. The P: tag will be used to indicate the location of a
> Profile for a given MAINTAINERS entry.
> 
> Cc: Joe Perches <joe@perches.com>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> ---
>  MAINTAINERS |   12 +++---------
>  1 file changed, 3 insertions(+), 9 deletions(-)
> 

...

>  MEDIA INPUT INFRASTRUCTURE (V4L/DVB)
>  M:	Mauro Carvalho Chehab <mchehab@kernel.org>
> -P:	LinuxTV.org Project
>  L:	linux-media@vger.kernel.org
>  W:	https://linuxtv.org
>  Q:	http://patchwork.kernel.org/project/linux-media/list/
> @@ -13452,7 +13450,6 @@ S:	Maintained
>  F:	arch/mips/ralink

Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

Thanks,
Mauro
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
