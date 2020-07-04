Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 677782148D7
	for <lists@lfdr.de>; Sat,  4 Jul 2020 23:25:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71D5488D90;
	Sat,  4 Jul 2020 21:25:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9cCCyuStJGT5; Sat,  4 Jul 2020 21:25:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id C1A3D88D57;
	Sat,  4 Jul 2020 21:25:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8123CC0733;
	Sat,  4 Jul 2020 21:25:29 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 09D2FC0733;
 Sat,  4 Jul 2020 21:25:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EAD3B873AA;
 Sat,  4 Jul 2020 21:25:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dxXm2-BQ2Lzm; Sat,  4 Jul 2020 21:25:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8D8DA87367;
 Sat,  4 Jul 2020 21:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 348288EE12E;
 Sat,  4 Jul 2020 14:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1593897924;
 bh=fLNQ6d4VgZNzO4C0fql4nUSSP4E1HMcnNHwjRBlqS38=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=jSEfzXzEGPQpGZgTuO7n558XbKupxEGM4ec/UKZ5/nAQHrKVQn9Q5emC/KIHUvPMK
 lTcBBUvpM8YTTYW8DTzMjA1QWQbrHrwKbcFLUvbqr9ooz+pdXI7ZASgBBTEaInRqVC
 Dwnx6vjv0JvtUwIERsnoQ3JC8ZSMl2cFCe6Qxjmg=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id Lq2wohIdSLj6; Sat,  4 Jul 2020 14:25:24 -0700 (PDT)
Received: from [153.66.254.194] (unknown [50.35.76.230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 5BB268EE100;
 Sat,  4 Jul 2020 14:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1593897923;
 bh=fLNQ6d4VgZNzO4C0fql4nUSSP4E1HMcnNHwjRBlqS38=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=MWxpwFEOQ9gzwOJ89HrIVizZNBpEf2v7N+WliEgdI3/madcY6YLi6ldin9gv985pD
 TFySuPGQu9wIMQJw/c+0F0kYdTjm5V6FvZKjscOFOpEHx9YfWhbaPhYWS5ahKzKnCf
 mZ4lCC4odeea0Ev9a02WfRXWN+zxfqhv1ogHTc2k=
Message-ID: <1593897917.7058.11.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Dan Williams <dan.j.williams@intel.com>, torvalds@linux-foundation.org
Date: Sat, 04 Jul 2020 14:25:17 -0700
In-Reply-To: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
Cc: Chris Mason <clm@fb.clm>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 tech-board-discuss@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH] CodingStyle:
	Inclusive Terminology
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

On Sat, 2020-07-04 at 13:02 -0700, Dan Williams wrote:
[...]
> diff --git a/Documentation/process/inclusive-terminology.rst
> b/Documentation/process/inclusive-terminology.rst
> new file mode 100644
> index 000000000000..a8eb26690eb4
> --- /dev/null
> +++ b/Documentation/process/inclusive-terminology.rst

Could we just lose this entire document?  The one thing we should learn
from recent history is that we really want prevent people distracting
from the good inclusive (and technically more accurate) terminology
will do.  One way the detractors do this by engaging in ultimately
pointless arguments about historical accuracy of supporting statements.
  By making pejorative statements about history (which are open to
challenge on several fronts), this document acts as a magnet for such
attention.  Simply leave it out and the detractors will have nothing to
attack except the bald statement of desiring more inclusive language. 
I'd much rather defend why we want inclusive and more descriptive
language than get into a pointless argument over whether the Ottoman
slave trade was more or less evil than the American one.

James

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
