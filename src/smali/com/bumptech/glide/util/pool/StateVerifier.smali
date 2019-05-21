.class public abstract Lcom/bumptech/glide/util/pool/StateVerifier;
.super Ljava/lang/Object;
.source "StateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/util/pool/StateVerifier;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method abstract setRecycled(Z)V
.end method

.method public abstract throwIfRecycled()V
.end method
