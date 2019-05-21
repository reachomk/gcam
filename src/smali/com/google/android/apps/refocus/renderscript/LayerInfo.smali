.class public final Lcom/google/android/apps/refocus/renderscript/LayerInfo;
.super Ljava/lang/Object;
.source "LayerInfo.java"


# instance fields
.field public backDepth:I

.field public frontDepth:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/google/android/apps/refocus/renderscript/LayerInfo;->frontDepth:I

    .line 13
    iput p1, p0, Lcom/google/android/apps/refocus/renderscript/LayerInfo;->backDepth:I

    .line 14
    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/google/android/apps/refocus/renderscript/LayerInfo;->frontDepth:I

    .line 18
    iput p2, p0, Lcom/google/android/apps/refocus/renderscript/LayerInfo;->backDepth:I

    .line 19
    return-void
.end method
