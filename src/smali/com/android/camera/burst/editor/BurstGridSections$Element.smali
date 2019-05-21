.class public final Lcom/android/camera/burst/editor/BurstGridSections$Element;
.super Ljava/lang/Object;
.source "BurstGridSections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/editor/BurstGridSections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Element"
.end annotation


# instance fields
.field private burstFrameItem:Lcom/android/camera/data/BurstFrameItem;

.field private elementType:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

.field private positionInSection:I


# direct methods
.method private constructor <init>(Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;Lcom/android/camera/data/BurstFrameItem;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/camera/burst/editor/BurstGridSections$Element;->elementType:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    .line 47
    iput-object p2, p0, Lcom/android/camera/burst/editor/BurstGridSections$Element;->burstFrameItem:Lcom/android/camera/data/BurstFrameItem;

    .line 48
    iput p3, p0, Lcom/android/camera/burst/editor/BurstGridSections$Element;->positionInSection:I

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;Lcom/android/camera/data/BurstFrameItem;IB)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/burst/editor/BurstGridSections$Element;-><init>(Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;Lcom/android/camera/data/BurstFrameItem;I)V

    return-void
.end method


# virtual methods
.method public final getBurstFrameItem()Lcom/android/camera/data/BurstFrameItem;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstGridSections$Element;->burstFrameItem:Lcom/android/camera/data/BurstFrameItem;

    return-object v0
.end method

.method public final getElementType()Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstGridSections$Element;->elementType:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    return-object v0
.end method

.method public final getPositionInSection()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/camera/burst/editor/BurstGridSections$Element;->positionInSection:I

    return v0
.end method

.method public final isHeader()Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstGridSections$Element;->elementType:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    sget-object v1, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->ALL_ELEMENTS_HEADER:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstGridSections$Element;->elementType:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    sget-object v1, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->BEST_ELEMENTS_HEADER:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
