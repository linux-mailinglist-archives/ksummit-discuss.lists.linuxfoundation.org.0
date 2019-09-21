Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C94AB9D15
	for <lists@lfdr.de>; Sat, 21 Sep 2019 10:56:36 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 736AC72A;
	Sat, 21 Sep 2019 08:56:13 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 366E149F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Sep 2019 08:56:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 94508711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Sep 2019 08:56:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Sep 2019 01:56:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,532,1559545200"; d="scan'208";a="202667604"
Received: from reichelh-mobl1.ger.corp.intel.com (HELO localhost)
	([10.252.54.127])
	by fmsmga001.fm.intel.com with ESMTP; 21 Sep 2019 01:56:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Doug Anderson <dianders@chromium.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
In-Reply-To: <CAD=FV=UjTT04pOf3q3H+ZdG9ixr6RWaRJfNs2Dk7xTTEMi-=xw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
	<CAMuHMdU10J5zgQ0r8uoA+LFHRbyLB=AG6xygTmsxwc7T-ffdDw@mail.gmail.com>
	<20190920145352.GI12950@pendragon.ideasonboard.com>
	<CAD=FV=UjTT04pOf3q3H+ZdG9ixr6RWaRJfNs2Dk7xTTEMi-=xw@mail.gmail.com>
Date: Sat, 21 Sep 2019 11:56:06 +0300
Message-ID: <87k1a2yqmx.fsf@intel.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH] media: add a subsystem profile
	documentation
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

On Fri, 20 Sep 2019, Doug Anderson <dianders@chromium.org> wrote:
> On Fri, Sep 20, 2019 at 7:54 AM Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
>> And remove Kees Cook and Colin King ? :-) Jokes aside, brushing up
>> get_maintainer.pl a bit is a good idea. I'm for instance not sure adding
>> LKML automatically is a good idea if other mailing lists are already
>> CC'ed, as it's a bit of a /dev/null (albeit with logging, so CC'ing it
>> when no other mailing list is appropriate certainly makes sense).
>
> Please don't do this, as it means the patch won't be findable on the
> "LKML" patchwork instance at:
>
> https://lore.kernel.org/patchwork/project/lkml/list/
>
> Having LKML copied on all patches is also nice because it makes it
> easier to respond to a patch that was posted to a list you didn't
> subscribe to.  I subscribe to LKML and have it redirected to a folder
> that I never look at.  Then if I want to find an email thread I can
> search that folder and easily respond from within my normal email
> client.
>
> Is there any downside to CCing LKML?

I think the question becomes, do we want *everything* posted to LKML?

For example, based on the last 30 days, the kernel the monthly addition
to LKML traffic from my corner of the kernel would be in this ballpark:

$ notmuch count date:30d.. to:intel-gfx@lists.freedesktop.org or to:dri-devel@lists.freedesktop.org and not to linux-kernel@vger.kernel.org and subject:PATCH
96904

OTOH LKML is already a firehose that's impossible to drink from, so not
much difference there...

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
