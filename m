Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA35184A41
	for <lists@lfdr.de>; Fri, 13 Mar 2020 16:08:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E946F85CD0;
	Fri, 13 Mar 2020 15:08:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QVM6S2GlZcd0; Fri, 13 Mar 2020 15:08:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6AAEE85C67;
	Fri, 13 Mar 2020 15:08:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3C95DC1D88;
	Fri, 13 Mar 2020 15:08:57 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5C769C0177;
 Fri, 13 Mar 2020 15:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 58B92204E0;
 Fri, 13 Mar 2020 15:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BpN0u6Q7Z1AW; Fri, 13 Mar 2020 15:08:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 86ED0204BE;
 Fri, 13 Mar 2020 15:08:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 08:08:12 -0700
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="237247874"
Received: from unknown (HELO localhost) ([10.252.52.87])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 08:08:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
In-Reply-To: <20200313145206.GE225435@mit.edu>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200313031947.GC225435@mit.edu> <87d09gljhj.fsf@intel.com>
 <20200313093548.GA2089143@kroah.com>
 <24c64c56-947b-4267-33b8-49a22f719c81@suse.cz>
 <20200313100755.GA2161605@kroah.com>
 <CAMuHMdVSxS1R2osYJh29aKGaqMw3NkTRgqgRWuhu4euygAAXVg@mail.gmail.com>
 <20200313103720.GA2215823@kroah.com>
 <CAMuHMdW6Br+x+_9xP+X4xr6FP_uNpZ6q6065RJH-9yFy_8fiZA@mail.gmail.com>
 <20200313081216.627c5bdf@gandalf.local.home> <874kusl50q.fsf@intel.com>
 <20200313145206.GE225435@mit.edu>
Date: Fri, 13 Mar 2020 17:08:30 +0200
Message-ID: <87wo7ojnrl.fsf@intel.com>
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 Vlastimil Babka <vbabka@suse.cz>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] Linux Foundation
	Technical Advisory Board Elections -- Change to charter
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

On Fri, 13 Mar 2020, "Theodore Y. Ts'o" <tytso@mit.edu> wrote:
> On Fri, Mar 13, 2020 at 04:10:29PM +0200, Jani Nikula wrote:
>> 
>> Have you considered whether the eligibility for running and voting
>> should be made the same? As it is, absolutely anyone can self-nominate
>> and run.
>
> That's always been the case.  However, at least historically, people
> who weren't physically present has never been successful.

Oh? May I ask for that to be clarified in the TAB charter, please.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
