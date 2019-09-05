Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E59E2AAC30
	for <lists@lfdr.de>; Thu,  5 Sep 2019 21:47:37 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 95E1E1B25;
	Thu,  5 Sep 2019 19:47:22 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 95D04D81
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 19:47:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
	[209.85.210.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 30ADC894
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 19:47:20 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id x127so2520172pfb.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 05 Sep 2019 12:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to;
	bh=7qjNQ8LXPIvTLl6OfLodBnC8RFUIniZRcCZ95g1/sXk=;
	b=adzW/YIebT/zSVURFwXNodP70L82E+Wryh1HS18dAV1EeT/8iSN/SV+70Er4n2P7ef
	CLaIq22KVlLaqAPxIf0ChEzhgJGfehgXGg0hUHeGfw9LJYNbNZ201pCLjyBJSKcq9A8S
	CKcFeVW3gogK7SC+K7C5rT2+PjKpFjLIJ5Sis=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=7qjNQ8LXPIvTLl6OfLodBnC8RFUIniZRcCZ95g1/sXk=;
	b=ji9noRm6CeIcJXCfwpRz9+adhy6idHbp4GLZDQjPdIa4hkC0wDb5A+iV809GPxsa+G
	HZdJkLYw2r6dL+unnDT7w1qRltsOvCoY0oounMVujaLCzZcjAczJKYul8RKiarChaNbG
	Al4pB4dVBukP5oVgLRM71qKsWySU1yno16Gy2sk9DcXqS8+Z82Ik3TaEQCXQETCEABcX
	/OBPNHcLa/l2heGfHwrwiM6d5LvRPdPtRf+x2nUXpIbrRxOWZ7GiQcNLGtuqNuommfdw
	qptl54SCdPZPUpUNL6VXseWuBXZJxy/BpErV1RbNxZPnaLU2+KUgkyqKCu3T5KvCQ1Jg
	yZuA==
X-Gm-Message-State: APjAAAXgjPfcxm96GAMorIk29nKHddSEouxdr8uqBRduxnUp7udnlfOP
	UAR65Lu/SwNb5yyBwK6DI0pD2+e3GcE=
X-Google-Smtp-Source: APXvYqx5lWS5wrUThAUX4v0FdneZqGulHsGHzESe36gpqHT0/8a7cdi39fR0/I6MscW6Ulr3c+NwrA==
X-Received: by 2002:a17:90a:2e86:: with SMTP id
	r6mr5688594pjd.67.1567712839367; 
	Thu, 05 Sep 2019 12:47:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
	by smtp.gmail.com with ESMTPSA id
	j18sm4081763pfh.70.2019.09.05.12.47.17
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 05 Sep 2019 12:47:18 -0700 (PDT)
Date: Thu, 5 Sep 2019 12:47:17 -0700
From: Kees Cook <keescook@chromium.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Message-ID: <201909051247.7B401D61@keescook>
References: <20190826212548.GA15967@mit.edu>
	<20190828192307.yvf372vnnx7f4iib@wittgenstein>
	<20190830035117.GB5670@mit.edu> <201908292248.12974C32@keescook>
	<20190905001230.GB25846@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905001230.GB25846@mit.edu>
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

On Wed, Sep 04, 2019 at 08:12:30PM -0400, Theodore Y. Ts'o wrote:
> On Thu, Aug 29, 2019 at 10:53:54PM -0700, Kees Cook wrote:
> > On Thu, Aug 29, 2019 at 11:51:17PM -0400, Theodore Y. Ts'o wrote:
> > > On Wed, Aug 28, 2019 at 09:23:08PM +0200, Christian Brauner wrote:
> > > > On Mon, Aug 26, 2019 at 05:25:48PM -0400, Theodore Ts'o wrote:
> > > > > This is a draft kernel summit track schedule.  Please let me know of
> > > > > any potential conflicts or schedule changes that you might like to
> > > > > make.
> > > > 
> > > > Could we grab a slot for
> > > > https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2019-July/006699.html
> > > > please? It doesn't seem to appear in the list yet.
> > > 
> > > I hadn't scheduled this because it seemed to be a fairly specialized
> > > topic, and one of the major contributors to the thread (Andy
> > > Lutomirski) won't be able to be there.  Will we have the right people
> > > to have this discussion in Lisbon?
> > 
> > I agree it would be better to have Andy there, but I don't think that's
> > reason enough to not discuss it. We had a rather large BoF meeting at LSS
> > about it with a circle of maybe 15-20 people where we made some headway
> > on understanding some of the larger requirements, but there was a lot
> > left to discuss. I know several people from that discussion will be in
> > Lisbon, though I agree it's somewhat specialized. I'm not sure what the
> > "interest level" cut-off is for a ksummit slot, but I know I'll need to
> > spend time talking with a bunch of people about it in person while I'm
> > there, so at least having some "unscheduled" slots for similar kinds of
> > discussions would be value.
> 
> OK, I've scheduled "Deep Argument Inspection and Seccomp" at 15:45 on
> Monday.  Let me know if that slot doesn't work for anyone critical who
> needs to participate.

This is great; thank you! :)

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
