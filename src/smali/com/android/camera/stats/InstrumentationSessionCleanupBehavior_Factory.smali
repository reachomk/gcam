.class public final Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior_Factory;
.super Ljava/lang/Object;
.source "InstrumentationSessionCleanupBehavior_Factory.java"

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
.field private static final INSTANCE:Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior_Factory;

    invoke-direct {v0}, Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior_Factory;-><init>()V

    sput-object v0, Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior_Factory;->INSTANCE:Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior_Factory;

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
    .line 18
    sget-object v0, Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior_Factory;->INSTANCE:Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior_Factory;

    return-object v0
.end method


# virtual methods
.method public final get()Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior;

    invoke-direct {v0}, Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior_Factory;->get()Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior;

    move-result-object v0

    return-object v0
.end method
