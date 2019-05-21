.class public final Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;
.super Lcom/android/camera/burst/editor/grid/GridFrameOrHeaderViewHolder;
.source "GridFrameViewHolder.java"


# static fields
.field private static sSelectionPadding:I


# instance fields
.field private final imageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

.field private mainFrameLayout:Landroid/widget/FrameLayout;

.field private final paddingFrameLayout:Landroid/widget/FrameLayout;

.field private request:Lcom/bumptech/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final selectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

.field private shrinkAnimator:Landroid/animation/ValueAnimator;

.field private type:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;Landroid/widget/FrameLayout;Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;)V
    .locals 4

    .prologue
    .line 61
    invoke-direct {p0, p2}, Lcom/android/camera/burst/editor/grid/GridFrameOrHeaderViewHolder;-><init>(Landroid/widget/FrameLayout;)V

    .line 62
    invoke-virtual {p1}, Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;->getFramesSelectionController$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM4TBIEDQ2UPB4D5Q6USHFCTP6IP1FADIMOPB3EHKMURI3DTN78SJFDHM6ASHR()Lcom/android/camera/module/video2/VideoModeModule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->selectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

    .line 63
    iput-object p2, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->mainFrameLayout:Landroid/widget/FrameLayout;

    .line 64
    const v0, 0x7f1100ac

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/editor/grid/BurstImageView;

    iput-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->imageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    .line 65
    const v0, 0x7f1100ab

    .line 66
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->paddingFrameLayout:Landroid/widget/FrameLayout;

    .line 68
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->imageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    new-instance v1, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$1;

    invoke-direct {v1, p0, p3}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$1;-><init>(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/editor/grid/BurstImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->imageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    new-instance v1, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$2;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$2;-><init>(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/editor/grid/BurstImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 89
    sget v0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->sSelectionPadding:I

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->imageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    .line 92
    invoke-virtual {v0}, Lcom/android/camera/burst/editor/grid/BurstImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01bb

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->sSelectionPadding:I

    .line 97
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->shrinkAnimator:Landroid/animation/ValueAnimator;

    .line 98
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->shrinkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 99
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->shrinkAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->shrinkAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$3;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$3;-><init>(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 107
    return-void

    .line 97
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNMAP39EHNN4BR7E9KM8BQ7E9KM8HJIC5MMALJ9CLRKGRRCCHIN4EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;)Lcom/android/camera/module/video2/VideoModeModule;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->selectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;F)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->setSelectionPadding(F)V

    return-void
.end method

.method private final setSelectionPadding(F)V
    .locals 2

    .prologue
    .line 170
    float-to-int v0, p1

    .line 171
    iget-object v1, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->paddingFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 172
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->paddingFrameLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0210

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->paddingFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 178
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->paddingFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public final adjustSelectionStateFromController(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->selectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/VideoModeModule;->isInSelectionMode()Z

    move-result v1

    .line 133
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->selectionController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___:Lcom/android/camera/module/video2/VideoModeModule;

    .line 1119
    iget-object v3, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->uri:Landroid/net/Uri;

    .line 133
    invoke-virtual {v0, v3}, Lcom/android/camera/module/video2/VideoModeModule;->contains(Landroid/net/Uri;)Z

    move-result v3

    .line 136
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->mainFrameLayout:Landroid/widget/FrameLayout;

    const v4, 0x7f1100ad

    .line 137
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 138
    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    .line 143
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 145
    if-ne v1, v3, :cond_0

    move p1, v2

    .line 150
    :cond_0
    if-eqz v3, :cond_3

    .line 151
    if-eqz p1, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->shrinkAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v7, [F

    aput v5, v1, v2

    sget v2, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->sSelectionPadding:I

    int-to-float v2, v2

    aput v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 153
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->shrinkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2110
    :goto_1
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->imageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    .line 166
    invoke-virtual {v0}, Lcom/android/camera/burst/editor/grid/BurstImageView;->invalidate()V

    .line 167
    return-void

    .line 138
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .line 155
    :cond_2
    sget v0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->sSelectionPadding:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->setSelectionPadding(F)V

    goto :goto_1

    .line 158
    :cond_3
    if-eqz p1, :cond_4

    .line 159
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->shrinkAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v7, [F

    sget v3, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->sSelectionPadding:I

    int-to-float v3, v3

    aput v3, v1, v2

    aput v5, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->shrinkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 162
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->setSelectionPadding(F)V

    goto :goto_1
.end method

.method public final getElementType()Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->type:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    return-object v0
.end method

.method public final getImageView()Lcom/android/camera/burst/editor/grid/BurstImageView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->imageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    return-object v0
.end method

.method public final getRequest()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->request:Lcom/bumptech/glide/RequestBuilder;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final setContents(Lcom/android/camera/burst/editor/BurstGridSections$Element;Lcom/bumptech/glide/RequestManager;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 213
    invoke-virtual {p1}, Lcom/android/camera/burst/editor/BurstGridSections$Element;->getBurstFrameItem()Lcom/android/camera/data/BurstFrameItem;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->uri:Landroid/net/Uri;

    .line 215
    invoke-virtual {p1}, Lcom/android/camera/burst/editor/BurstGridSections$Element;->getElementType()Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->type:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    .line 217
    invoke-virtual {p0, v5}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->adjustSelectionStateFromController(Z)V

    .line 219
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->updateImage(Lcom/bumptech/glide/RequestManager;Lcom/android/camera/data/BurstFrameItem;)V

    .line 220
    invoke-virtual {p0, p3}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->setIsBestShot(Z)V

    .line 221
    invoke-virtual {p1}, Lcom/android/camera/burst/editor/BurstGridSections$Element;->getPositionInSection()I

    move-result v0

    .line 5110
    iget-object v1, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->imageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    .line 4242
    invoke-virtual {v1}, Lcom/android/camera/burst/editor/grid/BurstImageView;->isBestShot()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4244
    invoke-virtual {v1}, Lcom/android/camera/burst/editor/grid/BurstImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a01e5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4243
    invoke-virtual {v1, v0}, Lcom/android/camera/burst/editor/grid/BurstImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 4248
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/burst/editor/grid/BurstImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01e4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 4249
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 4248
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4247
    invoke-virtual {v1, v0}, Lcom/android/camera/burst/editor/grid/BurstImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final setIsBestShot(Z)V
    .locals 1

    .prologue
    .line 229
    .line 6110
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->imageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    .line 229
    invoke-virtual {v0, p1}, Lcom/android/camera/burst/editor/grid/BurstImageView;->setIsBestShot(Z)V

    .line 230
    return-void
.end method

.method public final updateImage(Lcom/bumptech/glide/RequestManager;Lcom/android/camera/data/BurstFrameItem;)V
    .locals 7

    .prologue
    const/16 v2, 0x100

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 190
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 191
    invoke-virtual {v0, v2, v2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    new-instance v2, Lcom/bumptech/glide/signature/MediaStoreSignature;

    .line 193
    invoke-virtual {p2}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-virtual {p2}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/bumptech/glide/signature/MediaStoreSignature;-><init>(Ljava/lang/String;JI)V

    .line 192
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    .line 189
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 3020
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;-><init>()V

    .line 3076
    new-instance v2, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    invoke-direct {v2}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>()V

    .line 3120
    invoke-virtual {v2}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->build()Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;

    move-result-object v2

    .line 4112
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->transition(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    .line 196
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 4119
    iget-object v1, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->uri:Landroid/net/Uri;

    .line 197
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->request:Lcom/bumptech/glide/RequestBuilder;

    .line 198
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->request:Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->imageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 199
    return-void
.end method
