Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B0E1826FD
	for <lists@lfdr.de>; Thu, 12 Mar 2020 03:20:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF2E386B26;
	Thu, 12 Mar 2020 02:20:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H76UASRo1nKh; Thu, 12 Mar 2020 02:20:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D15F85FC6;
	Thu, 12 Mar 2020 02:20:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 16706C1D87;
	Thu, 12 Mar 2020 02:20:21 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EF5DFC0177
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 12 Mar 2020 02:20:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D9AB585FC9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 12 Mar 2020 02:20:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ItlcnHcG2kC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 12 Mar 2020 02:20:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5C72485FB2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 12 Mar 2020 02:20:17 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id b5so4230167qkh.8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 11 Mar 2020 19:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jCSRmMZ7Fjxj81Mc6fS91ZlgijJ9jLMjcHnF8aGvMfY=;
 b=IrxrAn2lC0Y50vHyiWYFoQ9u18uXXUV1z1riXDA63o7lQPyuLph4VPmd4jsbPNc0rJ
 Ysp6Lllv9gDCcpcrzVRaXlivC5wS1RqqwRW4zXjUmef0dekGgiFx7jzCev44c4n5RSMc
 O1y9okdAYmCmkeUMCIeCQiWqVdqV7aR24DlL0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jCSRmMZ7Fjxj81Mc6fS91ZlgijJ9jLMjcHnF8aGvMfY=;
 b=dCMdPWdbBHNV/WnBZ8pAQMTocsGd4l4jDYq3p5zzP89ZICnXlXwGlvLH5AC4hQAvm6
 crxN/fbkcIicg6etUAJch8IRhSDQ8ty4AHem6pLD6ntr3g49Cki/a+OoZfq8Reh6/xzQ
 59czQ29hKXAok+7hOcc/BxMi8vNM95BJJm7p3rwivxkdgS8t44LTYH44asLA927JfUKp
 IgJ8P1Hialyep5ToLd7Om+uAtTcvH5CgSes3cPnPIFRWgVDrHeBYPRMVioaAdToa5MZr
 CgqPvRZUZO6hENNePjrqUyMYQraUunrEnaQgfme/wEsyOYRiAUxECY8riaoAxwmV1q8O
 TlBg==
X-Gm-Message-State: ANhLgQ0JHClzyP5+BQ7RxZ3ezM6A4wLRClwRbnsnwhRsRxjz9Oxw0wVf
 sxDAyq7PTNoM14k4VOGn+wzkJw==
X-Google-Smtp-Source: ADFU+vsS267Bl8NJ1nuETfZPZBQUqJb1eg1FckARm5JitNbSA7CuVyV2rs1TFy8/9a22ZhQ+dM7M3A==
X-Received: by 2002:a05:620a:109a:: with SMTP id
 g26mr5767857qkk.166.1583979616041; 
 Wed, 11 Mar 2020 19:20:16 -0700 (PDT)
Received: from Lauras-MBP.fios-router.home
 (pool-96-235-39-235.pitbpa.fios.verizon.net. [96.235.39.235])
 by smtp.gmail.com with ESMTPSA id s56sm11138726qtk.9.2020.03.11.19.20.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 19:20:15 -0700 (PDT)
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <6d6dd6fa-880f-01fe-6177-281572aed703@labbott.name>
 <20200312003436.GF1639@pendragon.ideasonboard.com>
From: Laura Abbott <laura@labbott.name>
Message-ID: <750770eb-1fd4-73e1-da8a-f1247e31e7d8@labbott.name>
Date: Wed, 11 Mar 2020 22:20:15 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200312003436.GF1639@pendragon.ideasonboard.com>
Content-Language: en-US
Cc: ksummit-discuss@lists.linuxfoundation.org,
 tech-board-discuss@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Subject: Re: [Ksummit-discuss] Linux Foundation Technical Advisory Board
 Elections -- Change to charter
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

(speaking only for myself)

On 3/11/20 8:34 PM, Laurent Pinchart wrote:
> Hi Laura,
> 
> On Wed, Mar 11, 2020 at 08:19:46PM -0400, Laura Abbott wrote:
>> On behalf of the Linux Foundation Technical Advisory Board (TAB), I
>> would like to announce the following changes to our charter, available
>> at https://wiki.linuxfoundation.org/tab/start
>>
>> - Line 2b that previously read "All members shall be elected by a vote
>> amongst all invitees of the Linux Kernel Summit." is changed to "All
>> members shall be elected by a vote amongst all attendees of the Linux
>> Kernel Summit."
>>
>> This clarifies that kernel summit is no longer invite only.
> 
> This is a good clarification, no issue with it.
> 
>> - Under meetings and membership, the following line is added
>> "The TAB, at its discretion, may set criteria to allow for absentee
>> voting for those who are unable to attend the Linux Kernel Summit."
> 
> This is however a bit more problematic. I understand the intent, which I
> believe is good, but it would make ballot stuffing very easy. At the
> same time I understood it will not be an easy task to set clear written
> rules that wouldn't be over complex and would still allow reaching the
> end goal of expanding the election to the whole community through
> electronic voting. I'm afraid I don't have a solution to propose to this
> problem at this time.
> 

Thanks for the feedback.

Yes, this is a lot of the discussion we've been having. This is
definitely something we are carefully considering and intend to work
through. I, personally, want to err on the side of letting more
people participate but it's very hard to figure out what's a realistic
threat model. The TAB has a charter but it only works because the
community trusts us. If we were to get vote flooded by 10000 sock
puppets and elect 5 people who the majority of the community doesn't
trust, what impact could they actually have?

The charter also has this line: "The TAB is being formed at the
discretion of the Board. The Board alone may decide to terminate the TAB
in its sole discretion; provided however, that the Board or its
authorized officer shall first consult the TAB Chair." So in theory,
the TAB could be abolished. Would this actually happen? I would
really hope not but it's worth pointing out that there is a possible
solution for election edge cases, even if it's a very destructive one.
On the other hand, maybe I've actually provided a stronger argument for
why we really need to be careful about avoiding ballot box stuffing
if the only option is to burn it all down.

Also in case anyone in the community is worried we're trying to rush
this through in case of conference cancellations, this (really) has
been in discussion for the past few months. The way this is change is
worded the TAB also has the option of not allowing absentee voting, so
if in the unlikely event we don't come up with acceptable terms we will
be going with the existing voting procedures and not allowing absentee
voting.

Thanks,
Laura

>> For those who like diff form, this looks like
>>
>> diff --git a/charter b/charter
>> index 45816d7..70b2e56 100644
>> --- a/charter
>> +++ b/charter
>> @@ -4,7 +4,8 @@
>>        - Promote and Support the programmes with which the TAB is charged
>> to the wider Linux and Open Source Communities.
>>      - Meetings and Membership.
>>        - The TAB consists of ten voting members.
>> -    - All members shall be elected by a vote amongst all invitees of
>> the Linux Kernel Summit.
>> +    - All members shall be elected by a vote amongst all attendees of
>> the Linux Kernel Summit.
>> +    - The TAB, at its discretion, may set criteria to allow for
>> absentee voting for those who are unable to attend the Linux Kernel Summit.
>>        - Self nominations for the election shall be accepted from any
>> person, via email to the TAB mailing list, up until the time of the
>> election.
>>        - Membership of the TAB shall be for a term of 2 years with
>> staggered 1-year elections.
>>        - The TAB shall elect a Chair and Vice-Chair of the TAB from
>> amongst their members to serve a renewable 1 year term.
>>
>>
>> This change is intended to be a follow on to last year's changes to vote
>> electronically instead of using paper ballots
>> (see
>> https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2019-July/006582.html)
>> We will be announcing criteria for absentee voting at a later date.
>>
>> If you have any questions, feel free to speak up here or privately at
>> tab@lists.linuxfoundation.org.
> 
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
