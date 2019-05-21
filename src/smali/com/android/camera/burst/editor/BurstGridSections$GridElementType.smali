.class public final enum Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;
.super Ljava/lang/Enum;
.source "BurstGridSections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/editor/BurstGridSections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GridElementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

.field public static final enum ALL_ELEMENTS_HEADER:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

.field public static final enum ALL_ELEMENTS_THUMBNAIL:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

.field public static final enum BEST_ELEMENTS_HEADER:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

.field public static final enum BEST_ELEMENTS_THUMBNAIL:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    const-string v1, "BEST_ELEMENTS_HEADER"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->BEST_ELEMENTS_HEADER:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    .line 29
    new-instance v0, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    const-string v1, "ALL_ELEMENTS_HEADER"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->ALL_ELEMENTS_HEADER:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    .line 30
    new-instance v0, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    const-string v1, "BEST_ELEMENTS_THUMBNAIL"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->BEST_ELEMENTS_THUMBNAIL:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    .line 31
    new-instance v0, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    const-string v1, "ALL_ELEMENTS_THUMBNAIL"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->ALL_ELEMENTS_THUMBNAIL:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    sget-object v1, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->BEST_ELEMENTS_HEADER:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->ALL_ELEMENTS_HEADER:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->BEST_ELEMENTS_THUMBNAIL:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->ALL_ELEMENTS_THUMBNAIL:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->$VALUES:[Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->$VALUES:[Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    invoke-virtual {v0}, [Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    return-object v0
.end method
