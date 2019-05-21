.class public Lcom/android/camera/one/v2/imagemanagement/frame/CirculationPolicy$AlwaysCirculateFrames;
.super Ljava/lang/Object;
.source "CirculationPolicy.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/CirculationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/CirculationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlwaysCirculateFrames"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final circulateFramesToTarget()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
