.class final Lcom/android/camera/burst/editor/AddCreationFabMenu;
.super Ljava/lang/Object;
.source "AddCreationFabMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/editor/AddCreationFabMenu$AddCreationListener;,
        Lcom/android/camera/burst/editor/AddCreationFabMenu$Adapter;
    }
.end annotation


# static fields
.field private static final DUMMY_LISTENER:Lcom/android/camera/burst/editor/AddCreationFabMenu$AddCreationListener;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final adapter:Lcom/android/camera/burst/editor/AddCreationFabMenu$Adapter;

.field private final creationTypeViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/burst/postprocessing/CreationType;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private decelerateInterpolator:Landroid/view/animation/Interpolator;

.field private volatile fabShouldBeHidden:Z

.field private fadeLayer:Landroid/view/View;

.field private floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

.field private isAnimating:Z

.field private isOpening:Z

.field private listener:Lcom/android/camera/burst/editor/AddCreationFabMenu$AddCreationListener;

.field private speedDial:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "AddCreationFabMenu"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/android/camera/burst/editor/AddCreationFabMenu$1;

    invoke-direct {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu$1;-><init>()V

    sput-object v0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->DUMMY_LISTENER:Lcom/android/camera/burst/editor/AddCreationFabMenu$AddCreationListener;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/burst/editor/AddCreationFabMenu$Adapter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->isOpening:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->fabShouldBeHidden:Z

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->creationTypeViewMap:Ljava/util/Map;

    .line 91
    sget-object v0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->DUMMY_LISTENER:Lcom/android/camera/burst/editor/AddCreationFabMenu$AddCreationListener;

    iput-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->listener:Lcom/android/camera/burst/editor/AddCreationFabMenu$AddCreationListener;

    .line 111
    iput-object p1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->adapter:Lcom/android/camera/burst/editor/AddCreationFabMenu$Adapter;

    .line 112
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/burst/editor/AddCreationFabMenu;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->isAnimating:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/burst/editor/AddCreationFabMenu;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->isAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/burst/editor/AddCreationFabMenu;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->isOpening:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/burst/editor/AddCreationFabMenu;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->openSpeedDial()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/burst/editor/AddCreationFabMenu;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->closeSpeedDial()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/burst/editor/AddCreationFabMenu;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->speedDial:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/burst/editor/AddCreationFabMenu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->fadeLayer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/burst/editor/AddCreationFabMenu;)Lcom/android/camera/burst/editor/AddCreationFabMenu$AddCreationListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->listener:Lcom/android/camera/burst/editor/AddCreationFabMenu$AddCreationListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/burst/editor/AddCreationFabMenu;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->creationTypeViewMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/burst/editor/AddCreationFabMenu;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->fabShouldBeHidden:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/burst/editor/AddCreationFabMenu;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->fabShouldBeHidden:Z

    return p1
.end method

.method private final addCreationType(Lcom/android/camera/burst/postprocessing/CreationType;II)Landroid/view/View;
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->speedDial:Landroid/widget/LinearLayout;

    .line 364
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040024

    iget-object v2, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->speedDial:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 365
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 366
    iget-object v1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->speedDial:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    const v1, 0x7f1100ae

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 369
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 370
    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 372
    const v1, 0x7f1100af

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 373
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    iget-object v1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->creationTypeViewMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v1, Lcom/android/camera/burst/editor/AddCreationFabMenu$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/burst/editor/AddCreationFabMenu$6;-><init>(Lcom/android/camera/burst/editor/AddCreationFabMenu;Lcom/android/camera/burst/postprocessing/CreationType;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    return-object v0
.end method

.method private final animate(Z)V
    .locals 13

    .prologue
    .line 224
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 225
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 227
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 229
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 230
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 231
    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2267
    if-eqz p1, :cond_2

    .line 2268
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 2270
    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e3

    .line 2271
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2268
    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->fadeLayer:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v0, 0x2

    new-array v3, v0, [F

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    .line 238
    const/4 v0, 0x0

    :goto_1
    aput v0, v3, v4

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    aput v0, v3, v4

    .line 237
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 239
    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 242
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->speedDial:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 2282
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->speedDial:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2284
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 2286
    const v0, 0x7f1100af

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2288
    if-eqz p1, :cond_0

    .line 2289
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2292
    :cond_0
    if-eqz p1, :cond_5

    .line 2294
    iget-object v2, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->speedDial:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1e

    .line 2297
    :goto_4
    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v9, v3, [F

    const/4 v10, 0x0

    if-eqz p1, :cond_6

    .line 2301
    int-to-float v3, v7

    :goto_5
    aput v3, v9, v10

    const/4 v10, 0x1

    if-eqz p1, :cond_7

    .line 2302
    const/4 v3, 0x0

    :goto_6
    aput v3, v9, v10

    .line 2298
    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 2303
    int-to-long v8, v2

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2305
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v9, v3, [F

    const/4 v10, 0x0

    if-eqz p1, :cond_8

    .line 2307
    const/4 v3, 0x0

    :goto_7
    aput v3, v9, v10

    const/4 v10, 0x1

    if-eqz p1, :cond_9

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_8
    aput v3, v9, v10

    .line 2306
    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2308
    int-to-long v10, v2

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2310
    if-eqz p1, :cond_a

    const/high16 v3, 0x3f000000    # 0.5f

    move v4, v3

    .line 2311
    :goto_9
    if-eqz p1, :cond_b

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2313
    :goto_a
    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v4, v10, v11

    const/4 v11, 0x1

    aput v3, v10, v11

    .line 2314
    invoke-static {v0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2315
    int-to-long v10, v2

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2317
    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v4, v11, v12

    const/4 v4, 0x1

    aput v3, v11, v4

    .line 2318
    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2319
    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2321
    if-nez p1, :cond_1

    if-nez v1, :cond_1

    .line 2322
    new-instance v2, Lcom/android/camera/burst/editor/AddCreationFabMenu$5;

    invoke-direct {v2, p0}, Lcom/android/camera/burst/editor/AddCreationFabMenu$5;-><init>(Lcom/android/camera/burst/editor/AddCreationFabMenu;)V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2338
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2339
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2340
    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2341
    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 2273
    :cond_2
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 2275
    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e2

    .line 2276
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2273
    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 238
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 2295
    :cond_5
    mul-int/lit8 v2, v1, 0x14

    goto/16 :goto_4

    .line 2301
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 2302
    :cond_7
    int-to-float v3, v7

    goto/16 :goto_6

    .line 2307
    :cond_8
    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_7

    :cond_9
    const/4 v3, 0x0

    goto :goto_8

    .line 2310
    :cond_a
    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v3

    goto :goto_9

    .line 2311
    :cond_b
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_a

    .line 246
    :cond_c
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->decelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    if-eqz p1, :cond_d

    const-wide/16 v0, 0xda

    :goto_b
    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 248
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 249
    new-instance v0, Lcom/android/camera/burst/editor/AddCreationFabMenu$4;

    invoke-direct {v0, p0}, Lcom/android/camera/burst/editor/AddCreationFabMenu$4;-><init>(Lcom/android/camera/burst/editor/AddCreationFabMenu;)V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 263
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 264
    return-void

    .line 247
    :cond_d
    const-wide/16 v0, 0x96

    goto :goto_b

    .line 229
    nop

    :array_0
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data
.end method

.method private final closeSpeedDial()V
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->isOpening:Z

    .line 219
    iget-boolean v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->isOpening:Z

    invoke-direct {p0, v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->animate(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 221
    return-void
.end method

.method private final openSpeedDial()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->isOpening:Z

    .line 209
    invoke-direct {p0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->updateItemVisibility()V

    .line 211
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->speedDial:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->fadeLayer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->fadeLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 214
    iget-boolean v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->isOpening:Z

    invoke-direct {p0, v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->animate(Z)V

    .line 215
    return-void
.end method

.method private final updateItemVisibility()V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->adapter:Lcom/android/camera/burst/editor/AddCreationFabMenu$Adapter;

    .line 391
    invoke-virtual {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu$Adapter;->getAvailableCreationTypes()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/camera/burst/editor/AddCreationFabMenu$7;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/editor/AddCreationFabMenu$7;-><init>(Lcom/android/camera/burst/editor/AddCreationFabMenu;)V

    new-instance v2, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    .line 390
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 414
    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 131
    invoke-direct {p0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->closeSpeedDial()V

    .line 132
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->fadeLayer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    return-void
.end method

.method public final onBurstEditorCreated(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0200af

    const/4 v2, 0x2

    .line 167
    const v0, 0x7f1100a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 168
    const v0, 0x7f1100a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->speedDial:Landroid/widget/LinearLayout;

    .line 169
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->speedDial:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    const v0, 0x7f1100a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->fadeLayer:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->speedDial:Landroid/widget/LinearLayout;

    .line 173
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c0005

    .line 172
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->decelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 175
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->fadeLayer:Landroid/view/View;

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->speedDial:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1345
    sget-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->GROUP_SMILES:Lcom/android/camera/burst/postprocessing/CreationType;

    const v1, 0x7f0a0209

    const v2, 0x7f0200fd

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->addCreationType(Lcom/android/camera/burst/postprocessing/CreationType;II)Landroid/view/View;

    .line 1347
    sget-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->COLLAGE:Lcom/android/camera/burst/postprocessing/CreationType;

    const v1, 0x7f0a0208

    invoke-direct {p0, v0, v1, v3}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->addCreationType(Lcom/android/camera/burst/postprocessing/CreationType;II)Landroid/view/View;

    .line 1349
    sget-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->ANIMATION:Lcom/android/camera/burst/postprocessing/CreationType;

    const v1, 0x7f0a0207

    const v2, 0x7f0200b0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->addCreationType(Lcom/android/camera/burst/postprocessing/CreationType;II)Landroid/view/View;

    .line 1351
    sget-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->VFR_VIDEO:Lcom/android/camera/burst/postprocessing/CreationType;

    const v1, 0x7f0a020b

    const v2, 0x7f0200b1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->addCreationType(Lcom/android/camera/burst/postprocessing/CreationType;II)Landroid/view/View;

    .line 1353
    sget-object v0, Lcom/android/camera/burst/postprocessing/CreationType;->PHOTO_BOOTH:Lcom/android/camera/burst/postprocessing/CreationType;

    const v1, 0x7f0a020a

    invoke-direct {p0, v0, v1, v3}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->addCreationType(Lcom/android/camera/burst/postprocessing/CreationType;II)Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/android/camera/burst/editor/AddCreationFabMenu$2;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/editor/AddCreationFabMenu$2;-><init>(Lcom/android/camera/burst/editor/AddCreationFabMenu;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->fadeLayer:Landroid/view/View;

    new-instance v1, Lcom/android/camera/burst/editor/AddCreationFabMenu$3;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/editor/AddCreationFabMenu$3;-><init>(Lcom/android/camera/burst/editor/AddCreationFabMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-direct {p0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->updateItemVisibility()V

    .line 204
    return-void
.end method

.method public final setListener(Lcom/android/camera/burst/editor/AddCreationFabMenu$AddCreationListener;)V
    .locals 0

    .prologue
    .line 153
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 157
    iput-object p1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->listener:Lcom/android/camera/burst/editor/AddCreationFabMenu$AddCreationListener;

    .line 159
    return-void
.end method

.method public final show()V
    .locals 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->fabShouldBeHidden:Z

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 122
    invoke-direct {p0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->updateItemVisibility()V

    goto :goto_0
.end method
