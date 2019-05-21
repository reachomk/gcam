.class public final enum Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;
.super Ljava/lang/Enum;
.source "CameraAppUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreviewContentImplType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

.field public static final enum NONE:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

.field public static final enum SURFACE_VIEW:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

.field public static final enum TEXTURE_VIEW_LEGACY:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->NONE:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    .line 117
    new-instance v0, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    const-string v1, "SURFACE_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->SURFACE_VIEW:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    .line 119
    new-instance v0, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    const-string v1, "TEXTURE_VIEW_LEGACY"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->TEXTURE_VIEW_LEGACY:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    sget-object v1, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->NONE:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->SURFACE_VIEW:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->TEXTURE_VIEW_LEGACY:Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->$VALUES:[Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->$VALUES:[Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    invoke-virtual {v0}, [Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ui/CameraAppUI$PreviewContentImplType;

    return-object v0
.end method
