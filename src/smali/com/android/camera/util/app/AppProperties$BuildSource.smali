.class public final enum Lcom/android/camera/util/app/AppProperties$BuildSource;
.super Ljava/lang/Enum;
.source "AppProperties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/util/app/AppProperties$BuildSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/util/app/AppProperties$BuildSource;

.field public static final enum DOGFOOD:Lcom/android/camera/util/app/AppProperties$BuildSource;

.field public static final enum ENG:Lcom/android/camera/util/app/AppProperties$BuildSource;

.field public static final enum FISHFOOD:Lcom/android/camera/util/app/AppProperties$BuildSource;

.field public static final enum RELEASE:Lcom/android/camera/util/app/AppProperties$BuildSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/android/camera/util/app/AppProperties$BuildSource;

    const-string v1, "ENG"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/app/AppProperties$BuildSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/util/app/AppProperties$BuildSource;->ENG:Lcom/android/camera/util/app/AppProperties$BuildSource;

    .line 18
    new-instance v0, Lcom/android/camera/util/app/AppProperties$BuildSource;

    const-string v1, "FISHFOOD"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/util/app/AppProperties$BuildSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/util/app/AppProperties$BuildSource;->FISHFOOD:Lcom/android/camera/util/app/AppProperties$BuildSource;

    .line 19
    new-instance v0, Lcom/android/camera/util/app/AppProperties$BuildSource;

    const-string v1, "DOGFOOD"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/util/app/AppProperties$BuildSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/util/app/AppProperties$BuildSource;->DOGFOOD:Lcom/android/camera/util/app/AppProperties$BuildSource;

    .line 20
    new-instance v0, Lcom/android/camera/util/app/AppProperties$BuildSource;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/util/app/AppProperties$BuildSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/util/app/AppProperties$BuildSource;->RELEASE:Lcom/android/camera/util/app/AppProperties$BuildSource;

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/util/app/AppProperties$BuildSource;

    sget-object v1, Lcom/android/camera/util/app/AppProperties$BuildSource;->ENG:Lcom/android/camera/util/app/AppProperties$BuildSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/util/app/AppProperties$BuildSource;->FISHFOOD:Lcom/android/camera/util/app/AppProperties$BuildSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/util/app/AppProperties$BuildSource;->DOGFOOD:Lcom/android/camera/util/app/AppProperties$BuildSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/util/app/AppProperties$BuildSource;->RELEASE:Lcom/android/camera/util/app/AppProperties$BuildSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/util/app/AppProperties$BuildSource;->$VALUES:[Lcom/android/camera/util/app/AppProperties$BuildSource;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/util/app/AppProperties$BuildSource;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/camera/util/app/AppProperties$BuildSource;->$VALUES:[Lcom/android/camera/util/app/AppProperties$BuildSource;

    invoke-virtual {v0}, [Lcom/android/camera/util/app/AppProperties$BuildSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/util/app/AppProperties$BuildSource;

    return-object v0
.end method
