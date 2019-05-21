.class public final enum Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;
.super Ljava/lang/Enum;
.source "ExternalViewerButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/widget/ExternalViewerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

.field public static final enum BURST:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

.field public static final enum INVISIBLE:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

.field public static final enum PHOTO_SPHERE:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

.field public static final enum REFOCUS:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->INVISIBLE:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    .line 28
    new-instance v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    const-string v1, "PHOTO_SPHERE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->PHOTO_SPHERE:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    .line 29
    new-instance v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    const-string v1, "REFOCUS"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->REFOCUS:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    .line 30
    new-instance v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    const-string v1, "BURST"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->BURST:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    sget-object v1, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->INVISIBLE:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->PHOTO_SPHERE:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->REFOCUS:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->BURST:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->$VALUES:[Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->$VALUES:[Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    invoke-virtual {v0}, [Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    return-object v0
.end method
