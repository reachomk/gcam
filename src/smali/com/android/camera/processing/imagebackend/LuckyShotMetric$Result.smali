.class public final Lcom/android/camera/processing/imagebackend/LuckyShotMetric$Result;
.super Ljava/lang/Object;
.source "LuckyShotMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/LuckyShotMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final luckyShotFrameInfoBuilderOptional:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public final score:D


# direct methods
.method public constructor <init>(DLcom/android/camera/stats/LuckyShotFrameInfoBuilder;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetric$Result;->score:D

    .line 26
    invoke-static {p3}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotMetric$Result;->luckyShotFrameInfoBuilderOptional:Lcom/google/common/base/Optional;

    .line 27
    return-void
.end method
