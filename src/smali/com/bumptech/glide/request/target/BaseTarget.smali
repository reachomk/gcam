.class public abstract Lcom/bumptech/glide/request/target/BaseTarget;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/target/Target",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private request:Lcom/bumptech/glide/request/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/bumptech/glide/request/Request;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/request/target/BaseTarget;->request:Lcom/bumptech/glide/request/Request;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/request/target/BaseTarget;->request:Lcom/bumptech/glide/request/Request;

    .line 27
    return-void
.end method
