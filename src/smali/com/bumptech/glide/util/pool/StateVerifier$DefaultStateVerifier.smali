.class final Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;
.super Lcom/bumptech/glide/util/pool/StateVerifier;
.source "StateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/pool/StateVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultStateVerifier"
.end annotation


# instance fields
.field private volatile isReleased:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/util/pool/StateVerifier;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public final setRecycled(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;->isReleased:Z

    .line 46
    return-void
.end method

.method public final throwIfRecycled()V
    .locals 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;->isReleased:Z

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    return-void
.end method
