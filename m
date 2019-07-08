Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 873BB61DC9
	for <lists@lfdr.de>; Mon,  8 Jul 2019 13:29:51 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9480B2431;
	Mon,  8 Jul 2019 11:29:40 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 860732424
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 11:22:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
	[209.85.210.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E89338AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 11:22:02 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id e8so15790070otl.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 08 Jul 2019 04:22:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=knrQVfjPHO2wS5BzvmOYlH1ECM6BhEoCEWuZ2m/dmVM=;
	b=VBpL3Hc32RN/bq0Wbvb8p7D5lFvxCR1QnDtlaW4yk2W1zXWUvpcmB0ah4NyjNBGmXt
	aX+4/pdeSHhWqlGdXuNFN+Q7yNZGRm3ot+JZcbPpVtQVcBZCUUu2LH22gaBjuQHZhd6c
	iqscT4eIdwnZfOP4jlAWj3TLbtvr24FEC9nEOgze+lXf/PXzCtMtWyFajkz2r1TuByyb
	21EhKO9fOkvHrEZmDVs9elOMNJdkQesm2ItdGHAcaxSM4lXyUzcVcJZfNm0fbkmcUc0z
	2f3qUfRxFQqMTqICSFTfzYbk5M8lwvb8cgm9u7ZoGs/Ch+0f6mqz8jW54Ut2kbRy9pV0
	05hA==
X-Gm-Message-State: APjAAAXRSkdYlDjoXCOhhF6esc6JvFR98VmilsMTaEbrCui1P/lwF0AL
	R5R7Vtc0duFG4OQ8NLmZn838O3kE67vPAJ8AN1P6gJ4P
X-Google-Smtp-Source: APXvYqzPQQEb+cDSjYT+/mQTbeiexQXJ3gt8uO+yCkadGx7f3hmnyI6qhjUl31sU9em2uN+JHCWnZmPzMe5eUFT6njE=
X-Received: by 2002:a9d:529:: with SMTP id 38mr14054180otw.145.1562584922105; 
	Mon, 08 Jul 2019 04:22:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190706142738.GA6893@kunai>
In-Reply-To: <20190706142738.GA6893@kunai>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 8 Jul 2019 13:21:49 +0200
Message-ID: <CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
To: Wolfram Sang <wsa@the-dreams.de>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
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

Hi Wolfram,

On Sat, Jul 6, 2019 at 4:32 PM Wolfram Sang <wsa@the-dreams.de> wrote:
> In the parts of the Kernel I work with, reviews are usually given by a plain
> tag. I think this is not enough to keep a good code quality, so I'll start with
> my theses first:
>
> 1) we need a better distinction between Acked-by: and Reviewed-by: and encourage
>    stricter use of that

Before we had "Reviewed-by", "Acked-by" meant "looks OK to me".
Then we got "Reviewed-by" for more thorough reviews.

> 2) Reviewed-by should have a description of the review done (and the review not
>    done)
>
> 3) trivial patches should rather get Acked-by

These days when given by a maintainer, "Acked-by" means that the
maintainer is happy for the patch going in through another subsystem.

> Some more words about each item:

> 2) A short paragraph will usually do. Of course, trust helps a lot, but it
> doesn't solve everything. Trusted people can be in a hurry, too, etc. And for
> people I don't know, the plain tag doesn't tell me much. Examples for short
> descriptions: "I can't say much about the media part, but the I2C part is
> proper" or "I also checked the documentation and I think this is a good
> approach to overcome the issue" or "All my concerns in the preceding
> discussions have been addressed"

Definitely good to have, but hard to enforce, without making the process
heavier.

I have a fifth thesis: many people (incl. guilty me) browse quickly
through many patches flying by on mailing lists, but don't always go to
the effort of replying if they don't see something wrong immediately.
This means we don't catch a share of the reviews happening.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
