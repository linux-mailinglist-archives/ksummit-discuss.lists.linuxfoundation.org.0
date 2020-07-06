Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CC72157E2
	for <lists@lfdr.de>; Mon,  6 Jul 2020 14:59:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C4F0087643;
	Mon,  6 Jul 2020 12:59:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cXEi3hh1YXwb; Mon,  6 Jul 2020 12:59:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6240487637;
	Mon,  6 Jul 2020 12:59:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 38680C0891;
	Mon,  6 Jul 2020 12:59:17 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A6A64C016F;
 Mon,  6 Jul 2020 12:59:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A280988A71;
 Mon,  6 Jul 2020 12:59:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jvZcm8zdkowW; Mon,  6 Jul 2020 12:59:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0196.hostedemail.com
 [216.40.44.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3CEE088A6C;
 Mon,  6 Jul 2020 12:59:14 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 03B3618009078;
 Mon,  6 Jul 2020 12:59:13 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id B6C811AB01;
 Mon,  6 Jul 2020 12:59:10 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3653:3865:3866:3868:3870:3872:4321:5007:6119:6121:6609:7904:10004:10400:10848:11232:11657:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14659:21080:21324:21627:30012:30034:30054:30060:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: fact03_401811826eac
X-Filterd-Recvd-Size: 2574
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Mon,  6 Jul 2020 12:59:09 +0000 (UTC)
Message-ID: <d6f56f5f5e0790ee9c7579eb05c7d92e071ee15a.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Matthew Wilcox <willy6545@gmail.com>, Geert Uytterhoeven
 <geert@linux-m68k.org>
Date: Mon, 06 Jul 2020 05:59:08 -0700
In-Reply-To: <CAFhKne9vswg3Q4mTOz4WP6QWJ8tDH+SNx1Pu7LotLagoNURKgw@mail.gmail.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CAFhKne_ZVWVhZX5hNEbeGBfU6BMRN9JKQeTsVYOcMmEH1cd3xg@mail.gmail.com>
 <87h7ul15le.fsf@notabene.neil.brown.name>
 <20200706072221.GA1947246@kroah.com>
 <CAMuHMdWj2d5GF1ZkuhzQxg9teA51zjF0oQQPWcphzK=kJ6-x9Q@mail.gmail.com>
 <CAFhKne9vswg3Q4mTOz4WP6QWJ8tDH+SNx1Pu7LotLagoNURKgw@mail.gmail.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chris Mason <clm@fb.clm>,
 tech-board-discuss@lists.linuxfoundation.org,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
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

On Mon, 2020-07-06 at 08:51 -0400, Matthew Wilcox wrote:
[]
> In terms of number of lines of code using the word, it's only seventh
> in drivers/:
> 
> $ for i in drivers/*; do c=$(find $i -type f |xargs grep slave |wc
> -l); echo "$c $i"; done |sort -rn |head
> 5218 drivers/net
> 1341 drivers/dma
> 988 drivers/i2c
> 695 drivers/gpu
> 666 drivers/soundwire
> 665 drivers/spi
> 559 drivers/w1
> 461 drivers/infiniband
> 389 drivers/media
> 301 drivers/scsi

I get rather different and much lower numbers

$ git grep -i -w slave drivers | \
  cut -f1,2 -d/ | uniq -c | sort -rn | head -20 | cat -n
     1	   3091 drivers/net
     2	    654 drivers/i2c
     3	    595 drivers/soundwire
     4	    483 drivers/dma
     5	    284 drivers/infiniband
     6	    269 drivers/gpu
     7	    198 drivers/media
     8	    192 drivers/fsi
     9	    174 drivers/spi
    10	    131 drivers/ata
    11	    111 drivers/w1
    12	    110 drivers/staging
    13	     89 drivers/iio
    14	     71 drivers/usb
    15	     60 drivers/mfd
    16	     53 drivers/soc
    17	     52 drivers/tty
    18	     32 drivers/vme
    19	     32 drivers/mtd
    20	     28 drivers/ide


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
