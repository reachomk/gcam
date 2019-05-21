.class public final Lcom/bumptech/glide/GlideContext;
.super Landroid/content/ContextWrapper;
.source "GlideContext.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final componentCallbacks:Landroid/content/ComponentCallbacks2;

.field private final defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private final engine:Lcom/bumptech/glide/load/engine/Engine;

.field private final imageViewTargetFactory:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

.field private final logLevel:I

.field private final mainHandler:Landroid/os/Handler;

.field private final registry:Lcom/bumptech/glide/Registry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/request/target/ImageViewTargetFactory;Lcom/bumptech/glide/request/RequestOptions;Lcom/bumptech/glide/load/engine/Engine;Landroid/content/ComponentCallbacks2;I)V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/bumptech/glide/GlideContext;->registry:Lcom/bumptech/glide/Registry;

    .line 36
    iput-object p3, p0, Lcom/bumptech/glide/GlideContext;->imageViewTargetFactory:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    .line 37
    iput-object p4, p0, Lcom/bumptech/glide/GlideContext;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 38
    iput-object p5, p0, Lcom/bumptech/glide/GlideContext;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 39
    iput-object p6, p0, Lcom/bumptech/glide/GlideContext;->componentCallbacks:Landroid/content/ComponentCallbacks2;

    .line 40
    iput p7, p0, Lcom/bumptech/glide/GlideContext;->logLevel:I

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideContext;->mainHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method


# virtual methods
.method public final getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public final getEngine()Lcom/bumptech/glide/load/engine/Engine;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->engine:Lcom/bumptech/glide/load/engine/Engine;

    return-object v0
.end method

.method public final getLogLevel()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/bumptech/glide/GlideContext;->logLevel:I

    return v0
.end method

.method public final getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getRegistry()Lcom/bumptech/glide/Registry;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->registry:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->componentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-interface {v0, p1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 77
    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->componentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-interface {v0}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    .line 82
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->componentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-interface {v0, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 72
    return-void
.end method
