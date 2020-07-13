Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F2F21D982
	for <lists@lfdr.de>; Mon, 13 Jul 2020 17:07:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D655A26411;
	Mon, 13 Jul 2020 15:06:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fTamepZ4rYim; Mon, 13 Jul 2020 15:06:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 3EFF9263D9;
	Mon, 13 Jul 2020 15:06:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0BFADC088E;
	Mon, 13 Jul 2020 15:06:56 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 720BBC0733;
 Mon, 13 Jul 2020 15:06:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 572D726284;
 Mon, 13 Jul 2020 15:06:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aXqWBjWfEjAS; Mon, 13 Jul 2020 15:06:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by silver.osuosl.org (Postfix) with ESMTPS id BC1EA25DCD;
 Mon, 13 Jul 2020 15:06:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id C81808EE2A2;
 Mon, 13 Jul 2020 08:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1594652812;
 bh=Wv28Q89o7zHc6Vbye8fvipuLhXUbfn/tNh6dihLUgYo=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Vj+10LYgvpVxNV9mMHAIMEKUcWsvjvWTiCRT2Rc4m2JcWnKIBuHWwKXmcOSeUUSB0
 qhfLGQC0oyEWNdy3sXjvAiZV+zsO56kgfmlTqeIwMK9hjiGkF7K+kF9YBYT6JIPtl8
 U8UwpMMyjSHTiLyPKQ18A+/rfrsdNFJXA8xXCqes=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id IwuWQz25J0Fo; Mon, 13 Jul 2020 08:06:52 -0700 (PDT)
Received: from [153.66.254.194] (unknown [50.35.76.230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 1758B8EE051;
 Mon, 13 Jul 2020 08:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1594652812;
 bh=Wv28Q89o7zHc6Vbye8fvipuLhXUbfn/tNh6dihLUgYo=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Vj+10LYgvpVxNV9mMHAIMEKUcWsvjvWTiCRT2Rc4m2JcWnKIBuHWwKXmcOSeUUSB0
 qhfLGQC0oyEWNdy3sXjvAiZV+zsO56kgfmlTqeIwMK9hjiGkF7K+kF9YBYT6JIPtl8
 U8UwpMMyjSHTiLyPKQ18A+/rfrsdNFJXA8xXCqes=
Message-ID: <1594652811.3750.7.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Takashi Iwai <tiwai@suse.de>, Dan Williams <dan.j.williams@intel.com>
Date: Mon, 13 Jul 2020 08:06:51 -0700
In-Reply-To: <s5hlfjnzvu7.wl-tiwai@suse.de>
References: <159423201991.2466245.8461410729774664077.stgit@dwillia2-desk3.amr.corp.intel.com>
 <s5hlfjnzvu7.wl-tiwai@suse.de>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Dave Airlie <airlied@redhat.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH v3] CodingStyle:
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

On Mon, 2020-07-13 at 10:02 +0200, Takashi Iwai wrote:
> On Wed, 08 Jul 2020 20:14:27 +0200,
> Dan Williams wrote:
> > 
> > +Recommended replacements for 'blacklist/whitelist' are:
> > +    'denylist / allowlist'
> > +    'blocklist / passlist'
> 
> I started looking through the tree now and noticed there are lots of
> patterns like "whitelisted" or "blacklisted".  How can the words fit
> for those?  Actually, there are two cases like:
> 
> - Foo is blacklisted
> - Allow to load the non-whitelisted cards
> 
> Currently I'm replacing the former with "Foo is in denylist", but not
> sure about the latter case.  I thought Kees mentioned about this, but
> don't remember the proposal...

Remember these are suggestions for going forwards, not requirements for
changing everything.  We tend to be a community that likes make work
projects because they're easier to do than solving the hard problems,
but since we have over 100k occurrences of the various words in the
kernel, changing them all would cause massive churn and disrupt forward
development, which would cause way more harm than any gain from the
change.

James



_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
