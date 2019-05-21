.class public final Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private durationMillis:I

.field private factory:Lcom/bumptech/glide/request/transition/ViewAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/ViewAnimationFactory",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>(I)V

    .line 93
    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->durationMillis:I

    .line 104
    new-instance v0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;

    new-instance v1, Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;-><init>(Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->factory:Lcom/bumptech/glide/request/transition/ViewAnimationFactory;

    .line 106
    return-void
.end method


# virtual methods
.method public final build()Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;

    iget-object v1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->factory:Lcom/bumptech/glide/request/transition/ViewAnimationFactory;

    iget v2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->durationMillis:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/transition/ViewAnimationFactory;IZ)V

    return-object v0
.end method
