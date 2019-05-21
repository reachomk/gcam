.class final Lcom/android/camera/settings/DefaultsStore;
.super Ljava/lang/Object;
.source "DefaultsStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/DefaultsStore$Defaults;
    }
.end annotation


# static fields
.field private static defaultsInternalStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/settings/DefaultsStore$Defaults;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/settings/DefaultsStore;->defaultsInternalStore:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/camera/settings/DefaultsStore;->defaultsInternalStore:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/DefaultsStore$Defaults;

    .line 64
    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/settings/DefaultsStore$Defaults;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPossibleValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/camera/settings/DefaultsStore;->defaultsInternalStore:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/DefaultsStore$Defaults;

    .line 76
    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/settings/DefaultsStore$Defaults;->getPossibleValues()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/android/camera/settings/DefaultsStore$Defaults;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/settings/DefaultsStore$Defaults;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/android/camera/settings/DefaultsStore;->defaultsInternalStore:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method
