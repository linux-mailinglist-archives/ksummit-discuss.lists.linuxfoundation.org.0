Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B73A2F38
	for <lists@lfdr.de>; Fri, 30 Aug 2019 07:55:54 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B8FE95BB4;
	Fri, 30 Aug 2019 05:55:40 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B979A5BB0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 05:53:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
	[209.85.210.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 64E01EC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 05:53:57 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id c81so3860336pfc.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Aug 2019 22:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to;
	bh=iuc5U1xNXf0yAqKUhdKP8x4jRMgYAHpa8vxnMLQBB9A=;
	b=TIi3/m1D+tMjqYt6gDCls7pyM9t8A1r/lKjYhaFGrXuZoYLt5/+qA00eEI8fF9UQ5i
	i/jnEkwmkYAJoXI6UgtJbQkovgLAh0SfO8bfALfdFN0+pmBoNhdKTMZasRLvyC+qvIhG
	vmWM6RicOy02brEOfLUjh++Xmt6OBjnC5WZg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=iuc5U1xNXf0yAqKUhdKP8x4jRMgYAHpa8vxnMLQBB9A=;
	b=U6DORy1Vt4J4O3LBmWXRwupKENF64HP848Z2VgGWyezC/1uzmpYeWlWGQJkotOT6Py
	SG/w+vf+LipcHK92yZTO2ySRfY1M0GQ0voJv3ugTqhdFWv56DqihoJfg4oOvaw2NbOQ7
	dbPD1l8SzUk+57B0S5nahlm1nY4oxr/pDPqkampZGSOXX36xkT9umt2/4Ak+l6muUWyO
	GuhvOVK5Oktp82xFfZkLG7eqvWTo2VjVI1Ft6vQe1tpdyfCurGps4mKgolf6HpoIwhyJ
	A2KhlngWtszrZ8SK/1llFuuqeRWtXv5aYRxZNRO6om2KC1LvSzy6mZyhpwzTjoPmh1l+
	akvA==
X-Gm-Message-State: APjAAAWBk2rKqMvMqQ3YnEWCsxqonDNNzW0B6rOCng+JM3lhgbbVXLba
	FHWUo6cQzmmt0z86T/3qqQbtjlVo+fc=
X-Google-Smtp-Source: APXvYqx3a50udeQz1tDOVx13skgdw1kNJU3bTH/pGH8gsTAsdiahuTxxzFv9IoD/O2bcv4uhE6jBOQ==
X-Received: by 2002:a17:90a:eb18:: with SMTP id
	j24mr13524270pjz.82.1567144436560; 
	Thu, 29 Aug 2019 22:53:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
	by smtp.gmail.com with ESMTPSA id
	v189sm5352913pfv.176.2019.08.29.22.53.55
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 29 Aug 2019 22:53:55 -0700 (PDT)
Date: Thu, 29 Aug 2019 22:53:54 -0700
From: Kees Cook <keescook@chromium.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Message-ID: <201908292248.12974C32@keescook>
References: <20190826212548.GA15967@mit.edu>
	<20190828192307.yvf372vnnx7f4iib@wittgenstein>
	<20190830035117.GB5670@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830035117.GB5670@mit.edu>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Christian Brauner <christian.brauner@ubuntu.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] DRAFT Kernel Summit Track schedule
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

On Thu, Aug 29, 2019 at 11:51:17PM -0400, Theodore Y. Ts'o wrote:
> On Wed, Aug 28, 2019 at 09:23:08PM +0200, Christian Brauner wrote:
> > On Mon, Aug 26, 2019 at 05:25:48PM -0400, Theodore Ts'o wrote:
> > > This is a draft kernel summit track schedule.  Please let me know of
> > > any potential conflicts or schedule changes that you might like to
> > > make.
> > 
> > Could we grab a slot for
> > https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2019-July/006699.html
> > please? It doesn't seem to appear in the list yet.
> 
> I hadn't scheduled this because it seemed to be a fairly specialized
> topic, and one of the major contributors to the thread (Andy
> Lutomirski) won't be able to be there.  Will we have the right people
> to have this discussion in Lisbon?

I agree it would be better to have Andy there, but I don't think that's
reason enough to not discuss it. We had a rather large BoF meeting at LSS
about it with a circle of maybe 15-20 people where we made some headway
on understanding some of the larger requirements, but there was a lot
left to discuss. I know several people from that discussion will be in
Lisbon, though I agree it's somewhat specialized. I'm not sure what the
"interest level" cut-off is for a ksummit slot, but I know I'll need to
spend time talking with a bunch of people about it in person while I'm
there, so at least having some "unscheduled" slots for similar kinds of
discussions would be value.

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
