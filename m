Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id EB971AA7CC
	for <lists@lfdr.de>; Thu,  5 Sep 2019 17:58:48 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B669D1662;
	Thu,  5 Sep 2019 15:58:35 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C343814A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 15:58:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7515A894
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 15:58:33 +0000 (UTC)
Received: by mail-qk1-f174.google.com with SMTP id m2so2578240qkd.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 05 Sep 2019 08:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ab1NlEHzOzMFGPLXexGND45BxHgl4yguL6+ldDhk9OA=;
	b=Bmjo4rCXBLxgumx+0kS7D6nGCBMhAdCGPIgBrpSs3LTt41IqMBkUSbfpLQfecaD3p0
	7kReEHdtyJ3ArHikfzwNijd95cjDnd5q3dk3bdiDrSSnrHHuk18QPfTGT5iJAcq+0Aqt
	qO3fVR0GIHyRZ/W+ZU6mJ8uowCXrk87WGn/NA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:user-agent;
	bh=ab1NlEHzOzMFGPLXexGND45BxHgl4yguL6+ldDhk9OA=;
	b=tI527EUf3iSutq+ZjS8i/1I76KiFh2VK4gTUVATo8UzzeaCLic5IdjFQ2JRRsQKbYH
	9Sh2XdBJccAraT0UzafP8RlhsBMTiB90nKEsZ6/NM6YMZ/KhgifUBSuvVaOWN7y/SY0U
	KjqZMC0jJAJUVGGAIVMlQdhLMS9oknRWww6tb6wZERIpCuUzY4yz46OlbpBPz2caaK67
	J79twTbWVtgT84KSoUO/cJG8r5LQus/tLbLZq3NVJSyh+/oWYH4gfDFE5cgTbBiElV0Q
	a/e1Ym4AsPzX/HFJMx1TOkg642GPsUEfYtZEb5W51JlAliCfQemIl/X5yBjG1jakMJu1
	Qu+w==
X-Gm-Message-State: APjAAAV60/mOsv3KZLcR7ZbmPDpt5Or/yA9eiTk18eNEwxHiGgSeG1F6
	7rru7gUpP72RVIvdh4tp7BDIk7op
X-Google-Smtp-Source: APXvYqy0RD/tLHnva6lhVwl4+ivsJfRnwnjiqrREvJlHnLXxtKZISZFhVlnQKxZ12H3hg39ocpnrYw==
X-Received: by 2002:a37:4b42:: with SMTP id y63mr3707726qka.450.1567699112571; 
	Thu, 05 Sep 2019 08:58:32 -0700 (PDT)
Received: from chatter.i7.local (192-0-228-88.cpe.teksavvy.com. [192.0.228.88])
	by smtp.gmail.com with ESMTPSA id 44sm1130575qtu.45.2019.09.05.08.58.31
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 05 Sep 2019 08:58:31 -0700 (PDT)
Date: Thu, 5 Sep 2019 11:58:30 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Message-ID: <20190905155830.GB11837@chatter.i7.local>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	ksummit-discuss@lists.linuxfoundation.org
References: <20190905154702.GA21622@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905154702.GA21622@mit.edu>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] DRAFT Maintainer's Summit Agenda and Attendee
 List
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Thu, Sep 05, 2019 at 11:47:02AM -0400, Theodore Y. Ts'o wrote:
>9:00  Hot breakfast and morning refreshments (sponsored by IBM)
>      <Room available for hacking and informal discussions>
>12:00 Lunch (sponsored by Intel)
>13:00 Agenda Bashing
>13:30 Dealing with the high volume of automated bug finders (Shuah Kahn)
>14:00 Stable Kernel Process Automation and Improvement (Sasha Levin)
>14:30 Depth of the "pull network" (James Bottomley)
>15:00 Afternoon Break (Sponsored by IBM)
>15:30 Is Linus Happy?
>16:30 <Open Slot>

Can I slot in a 5-minute "kernel.org maintainer initiatives" summary 
here, or is that something that will be scheduled on the spot?

>17:00 Maintainer Summit: What went well, what can we do better?
>17:30 Group Photo
>18:30 Bus Transportation to Evening Event


-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
