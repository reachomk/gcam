.class Landroid/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"

# interfaces
.implements Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseEdgeEffectImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static scrollListBy(Landroid/widget/ListView;I)V
    .locals 0

    .prologue
    .line 1024
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 1025
    return-void
.end method


# virtual methods
.method public final draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public final finish(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public final isFinished(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public final newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onAbsorb(Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public final onPull(Ljava/lang/Object;F)Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public final onPull(Ljava/lang/Object;FF)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public final onRelease(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public final setSize(Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method