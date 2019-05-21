.class public Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;
.super Ljava/lang/Object;
.source "ContentValuesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/mediastore/ContentValuesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContentValuesProxy()Lcom/android/camera/storage/mediastore/ContentValuesProxy;
    .locals 1

    .prologue
    .line 1019
    new-instance v0, Lcom/android/camera/storage/mediastore/ContentValuesProxy;

    invoke-direct {v0}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;-><init>()V

    return-object v0
.end method
