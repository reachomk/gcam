.class public final Lcom/google/android/apps/refocus/processing/Tiler$Tile;
.super Ljava/lang/Object;
.source "Tiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/processing/Tiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tile"
.end annotation


# instance fields
.field public final height:I

.field public final left:I

.field public final top:I

.field public final width:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/google/android/apps/refocus/processing/Tiler$Tile;->left:I

    .line 52
    iput p2, p0, Lcom/google/android/apps/refocus/processing/Tiler$Tile;->top:I

    .line 53
    iput p3, p0, Lcom/google/android/apps/refocus/processing/Tiler$Tile;->width:I

    .line 54
    iput p4, p0, Lcom/google/android/apps/refocus/processing/Tiler$Tile;->height:I

    .line 55
    return-void
.end method
