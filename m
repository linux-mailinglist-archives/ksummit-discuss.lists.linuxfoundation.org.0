Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 39769B2622
	for <lists@lfdr.de>; Fri, 13 Sep 2019 21:33:28 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E585AE8C;
	Fri, 13 Sep 2019 19:33:08 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DA1BDE3D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 19:33:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f67.google.com (mail-yw1-f67.google.com
	[209.85.161.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5B6ED7D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 19:33:06 +0000 (UTC)
Received: by mail-yw1-f67.google.com with SMTP id e205so7660395ywc.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 12:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=u15qLOoIkxp7cEiegHHFsMr736/3RxJj/WpvpjNuB/w=;
	b=q4dk0LhsoDsIEBV4EyhB9244sene9/mxhEF+KQV4YKoKPHE7SK7jkZFRbWgUQxR1fB
	yOE/YcUNteeeI3lU1PU9VBugQ+9OUWfGYuD++yg30ZEG4nGnzy5YgkSDAuryxrvfGslY
	m/m4CPUYI/Z5PdoIMxNaDoNyKIEX2zHa7aIf4Yrl7kJGDVDRHoGkujUbm4Q9yjFfh4RG
	FTsL8M2++sRCEMxWENJkGzYqQZywmdwLrDmLkkQZxRgyhGoBw7L6gjDcqrnPTHGdeJJL
	Lc6uQCZg8/11s0MbsSl1Kry0emON3LcNoRIzhfrf2BX0LNuU5YWF7MvHjZoU63S0X9jD
	xdTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=u15qLOoIkxp7cEiegHHFsMr736/3RxJj/WpvpjNuB/w=;
	b=W11MHwa2qX5h35uH5oGjSVO5c+oPxISkTYoSAguyU2FG61t1CUDnFwTEQMmsZBU+xo
	05WwEnxsRfpjPeVI5hkNzI7ZAIsd27BOVLFfgxiOvGUPcZq1Ib9RxRMGtf3WzyN9XNE5
	aU6V419jzKQjY/lVhH1r2TtWXV5udF9tTy3W6XdROaYCKIdICQdDI9WftidHjp4ZPmtH
	Q8eV2waDr+6zXBTIk/r+odg9dToc2v5xaqg1n9y5N4EBKnNi6UNCIDbdzaz4rSm3U/aT
	tKSnBpKUM1prFNMLp1BnS+q5S1uncvd7LKJlgQKD95E6O6aAh/wzSofIADJ9GYB8oR1y
	9kfA==
X-Gm-Message-State: APjAAAUxVGelZL1R5zr8WEcyp+2LClEchmZ7skJLidYR25c/6tqznw21
	cfw+DERFTJBqkKlxOLkocYOBPWBXZQUDSJF2ug==
X-Google-Smtp-Source: APXvYqzl9Gmz00Dm5vFdc8rEO+frJ4ZNkwLJ1YEPQUO83/7IjTjFzgLFJ+QiOPrUAgRD1X21OU3A4ibVOH9g531GgIE=
X-Received: by 2002:a81:9182:: with SMTP id
	i124mr31070145ywg.279.1568403185288; 
	Fri, 13 Sep 2019 12:33:05 -0700 (PDT)
MIME-Version: 1.0
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<20190911184332.GL20699@kadam>
	<9132e214-9b57-07dc-7ee2-f6bc52e960c5@kernel.dk>
	<20190913010937.7fc20d93@lwn.net> <20190913114849.GP20699@kadam>
	<b579153b-3f6d-722c-aea8-abc0d026fa0d@infradead.org>
	<CAL_JsqLo9-zQYGj2vaEWppbioO0rXu-QNbHhydYdMgrZo0_ESg@mail.gmail.com>
	<f0ad46a34078a2c1eaa013f9b1a5a52becbcd1c5.camel@perches.com>
In-Reply-To: <f0ad46a34078a2c1eaa013f9b1a5a52becbcd1c5.camel@perches.com>
From: Rob Herring <robherring2@gmail.com>
Date: Fri, 13 Sep 2019 14:32:53 -0500
Message-ID: <CAL_JsqKOyLefjdW3a7m8fmqSGXAo4CCx2mZzi-JPf5qKD1NWxA@mail.gmail.com>
To: Joe Perches <joe@perches.com>
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	linux-nvdimm <linux-nvdimm@lists.01.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	bpf@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
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

On Fri, Sep 13, 2019 at 11:42 AM Joe Perches <joe@perches.com> wrote:
>
> On Fri, 2019-09-13 at 16:46 +0100, Rob Herring wrote:
> > On Fri, Sep 13, 2019 at 4:00 PM Randy Dunlap <rdunlap@infradead.org> wrote:
> > > On 9/13/19 4:48 AM, Dan Carpenter wrote:
> > >
> > > > > So I'm expecting to take this kind of stuff into Documentation/.  My own
> > > > > personal hope is that it can maybe serve to shame some of these "local
> > > > > quirks" out of existence.  The evidence from this brief discussion suggests
> > > > > that this might indeed happen.
> > > >
> > > > I don't think it's shaming, I think it's validating.  Everyone just
> > > > insists that since it's written in the Book of Rules then it's our fault
> > > > for not reading it.  It's like those EULA things where there is more
> > > > text than anyone can physically read in a life time.
> > >
> > > Yes, agreed.
> > >
> > > > And the documentation doesn't help.  For example, I knew people's rules
> > > > about capitalizing the subject but I'd just forget.  I say that if you
> > > > can't be bothered to add it to checkpatch then it means you don't really
> > > > care that strongly.
> > >
> > > If a subsystem requires a certain spelling/capitalization in patch email
> > > subjects, it should be added to MAINTAINERS IMO.  E.g.,
> > > E:      NuBus
> >
> > +1
> >
> > Better make this a regex to deal with (net|net-next).
> >
> > We could probably script populating MAINTAINERS with this using how it
> > is done manually: git log --oneline <dir>
>
> I made a similar proposal nearly a decade ago to add a grammar
> to MAINTAINERS sections for patch subject prefixes.
>
> https://lore.kernel.org/lkml/1289919077.28741.50.camel@Joe-Laptop/

Perhaps there's more support for it now. I didn't get through all the
thread, but the positions seemed to range from "who cares, subjects
are easy to edit" to "seems like a good idea and doesn't hurt". I
probably would have implemented something, but perl (tacking on to
checkpatch and having you tell me everything wrong is about all I can
do :)).

Rob
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
