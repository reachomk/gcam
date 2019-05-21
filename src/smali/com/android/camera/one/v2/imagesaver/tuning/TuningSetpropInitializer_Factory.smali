.class public final Lcom/android/camera/one/v2/imagesaver/tuning/TuningSetpropInitializer_Factory;
.super Ljava/lang/Object;
.source "TuningSetpropInitializer_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/one/v2/imagesaver/tuning/TuningSetpropInitializer_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningSetpropInitializer_Factory;

    invoke-direct {v0}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningSetpropInitializer_Factory;-><init>()V

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningSetpropInitializer_Factory;->INSTANCE:Lcom/android/camera/one/v2/imagesaver/tuning/TuningSetpropInitializer_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 17
    sget-object v0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningSetpropInitializer_Factory;->INSTANCE:Lcom/android/camera/one/v2/imagesaver/tuning/TuningSetpropInitializer_Factory;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1013
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningSetpropInitializer;

    invoke-direct {v0}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningSetpropInitializer;-><init>()V

    .line 6
    return-object v0
.end method
