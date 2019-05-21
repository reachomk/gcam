.class public final enum Lcom/android/camera/burst/BurstFacade$Source;
.super Ljava/lang/Enum;
.source "BurstFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/burst/BurstFacade$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/burst/BurstFacade$Source;

.field public static final enum A11Y_BUTTON:Lcom/android/camera/burst/BurstFacade$Source;

.field public static final enum ABSENT:Lcom/android/camera/burst/BurstFacade$Source;

.field public static final enum FORCE_STOP:Lcom/android/camera/burst/BurstFacade$Source;

.field public static final enum LOW_STORAGE_ALERT:Lcom/android/camera/burst/BurstFacade$Source;

.field public static final enum SHUTTER_BUTTON:Lcom/android/camera/burst/BurstFacade$Source;

.field public static final enum VOLUME_BUTTON:Lcom/android/camera/burst/BurstFacade$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/android/camera/burst/BurstFacade$Source;

    const-string v1, "ABSENT"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/burst/BurstFacade$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/BurstFacade$Source;->ABSENT:Lcom/android/camera/burst/BurstFacade$Source;

    .line 38
    new-instance v0, Lcom/android/camera/burst/BurstFacade$Source;

    const-string v1, "SHUTTER_BUTTON"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/burst/BurstFacade$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/BurstFacade$Source;->SHUTTER_BUTTON:Lcom/android/camera/burst/BurstFacade$Source;

    .line 39
    new-instance v0, Lcom/android/camera/burst/BurstFacade$Source;

    const-string v1, "VOLUME_BUTTON"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/burst/BurstFacade$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/BurstFacade$Source;->VOLUME_BUTTON:Lcom/android/camera/burst/BurstFacade$Source;

    .line 40
    new-instance v0, Lcom/android/camera/burst/BurstFacade$Source;

    const-string v1, "A11Y_BUTTON"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/burst/BurstFacade$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/BurstFacade$Source;->A11Y_BUTTON:Lcom/android/camera/burst/BurstFacade$Source;

    .line 41
    new-instance v0, Lcom/android/camera/burst/BurstFacade$Source;

    const-string v1, "LOW_STORAGE_ALERT"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/burst/BurstFacade$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/BurstFacade$Source;->LOW_STORAGE_ALERT:Lcom/android/camera/burst/BurstFacade$Source;

    .line 42
    new-instance v0, Lcom/android/camera/burst/BurstFacade$Source;

    const-string v1, "FORCE_STOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/burst/BurstFacade$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/BurstFacade$Source;->FORCE_STOP:Lcom/android/camera/burst/BurstFacade$Source;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/burst/BurstFacade$Source;

    sget-object v1, Lcom/android/camera/burst/BurstFacade$Source;->ABSENT:Lcom/android/camera/burst/BurstFacade$Source;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/burst/BurstFacade$Source;->SHUTTER_BUTTON:Lcom/android/camera/burst/BurstFacade$Source;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/burst/BurstFacade$Source;->VOLUME_BUTTON:Lcom/android/camera/burst/BurstFacade$Source;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/burst/BurstFacade$Source;->A11Y_BUTTON:Lcom/android/camera/burst/BurstFacade$Source;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/burst/BurstFacade$Source;->LOW_STORAGE_ALERT:Lcom/android/camera/burst/BurstFacade$Source;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/burst/BurstFacade$Source;->FORCE_STOP:Lcom/android/camera/burst/BurstFacade$Source;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/burst/BurstFacade$Source;->$VALUES:[Lcom/android/camera/burst/BurstFacade$Source;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/burst/BurstFacade$Source;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/camera/burst/BurstFacade$Source;->$VALUES:[Lcom/android/camera/burst/BurstFacade$Source;

    invoke-virtual {v0}, [Lcom/android/camera/burst/BurstFacade$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/burst/BurstFacade$Source;

    return-object v0
.end method
