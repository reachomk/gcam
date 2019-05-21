.class public final Lcom/google/android/apps/refocus/processing/Tiler$Options;
.super Ljava/lang/Object;
.source "Tiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/processing/Tiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public final alignment:I

.field public final apron:I

.field public final maxHeight:I

.field public final maxWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .prologue
    const/16 v0, 0x400

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->maxWidth:I

    .line 30
    iput v0, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->maxHeight:I

    .line 31
    const/16 v0, 0x19

    iput v0, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->apron:I

    .line 32
    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/apps/refocus/processing/Tiler$Options;->alignment:I

    .line 33
    return-void
.end method
